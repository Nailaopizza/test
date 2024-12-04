using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;

using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace курсач
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Loaded += MainWindow_Loaded;
            
        }
        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            RefreshTechnoServiceDataGrid();
            ComboStatus.ItemsSource = termEntities.GetContext().Status.ToList();
            Box.Text = termEntities.GetContext().Order_.Count(r => r.StatusID == 4).ToString();
            Vis();
        }

        public Visibility VisEdit
        {
            get
            {
               return VisEdit = Visibility.Collapsed;
                //switch (Authorization.authorizationRole)
                //{
                //    case "админ":
                //        return Visibility.Visible;
                //    case "модер":
                //        return Visibility.Visible;
                //    case "юзер":
                //        return Visibility.Collapsed;
                //    default: return Visibility.Collapsed;
                //}
            }
            set { VisEdit = value; }
        }
        private void RefreshTechnoServiceDataGrid()
        {
            var context = termEntities.GetContext();
            var requestsWithRelations = context.Order_
                .Include(nameof(Order_.Item))
                .Include(nameof(Order_.Client))
                .Include(nameof(Order_.Worker))
                .ToList();
            TechnoService.ItemsSource = requestsWithRelations;
        }
        private void Vis()
        {
            switch (Authorization.authorizationRole)
            {
                case "админ":
                    break;
                case "модер":
                    BtnDelet.Visibility = Visibility.Collapsed;
                    break;
                case "юзер":
                    BtnDelet.Visibility = Visibility.Collapsed;
                    break;
                default: return;
            }
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            var selectedRequest = (sender as Button)?.DataContext as Order_;
            if (selectedRequest != null)
            {
                RefreshWindow addEditWindow = new RefreshWindow(selectedRequest);
                if (addEditWindow.ShowDialog() == true)
                {
                    RefreshTechnoServiceDataGrid();
                }
            }
        }
        private void BtnAdd_click(object sender, RoutedEventArgs e) 
        { 
            AddEditWindow addEditWindow = new AddEditWindow();
            if (addEditWindow.ShowDialog() == true)
            {
                RefreshTechnoServiceDataGrid();
            }
        }
        private void BtnDelet_Click(object sender, RoutedEventArgs e) 
        { 
            var servisForRemoving = TechnoService.SelectedItems.Cast<Order_>().ToList(); 
            if (servisForRemoving.Any() && MessageBox.Show($"Вы точно хотите удалить следующее{servisForRemoving.Count()}элемент?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes) 
            {
                var context = termEntities.GetContext(); 
                context.Order_.RemoveRange(servisForRemoving); 
                context.SaveChanges(); 
                MessageBox.Show("Данные удалены"); 
                RefreshTechnoServiceDataGrid();
            } 
        }
        private void BtnUp_Click(object sender, RoutedEventArgs e) 
        {
            TechnoService.ItemsSource = termEntities.GetContext().Order_.ToList(); RefreshTechnoServiceDataGrid();
        }
        private void BtnOut_Click(object sender, RoutedEventArgs e) 
        { 
            if (ComboStatus.SelectedItem is Status selectedStatus) 
            {
                int selectedStatusId = selectedStatus.StatusID;
                var context = termEntities.GetContext();
                TechnoService.ItemsSource = context.Order_
                    
                    .Include(nameof(Order_.Client))
                    .Include(nameof(Order_.Worker))
                    .Where(r => r.StatusID == selectedStatusId)
                    .ToList(); 
            }
        }
        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var searchText = SearchBox.Text.ToLower();
            var context = termEntities.GetContext();
            try
            {
                TechnoService.ItemsSource = context.Order_
                    .Include(nameof(Order_.Item))
                    .Include(nameof(Order_.Client))
                    .Include(nameof(Order_.Worker))
                    .Where(r => r.OrderNumber
                    .ToString().Contains(searchText) || 
                    r.Item.ItemName.ToLower().Contains(searchText) ||
                    r.Client.ClientName.ToLower().Contains(searchText) ||
                    r.Status.StatusName.ToLower().Contains(searchText) || 
                    r.Worker.WorkerName.ToLower().Contains(searchText)).ToList(); 
            }
            catch (System.Data.Entity.Core.EntityCommandExecutionException ex)
            { 
                Console.WriteLine(ex.InnerException?.Message); 
            }
        }
        private void BtnAuthorization_Click(object sender, RoutedEventArgs e) 
        { 
            AuthorizationWindow authorizationWindow = new AuthorizationWindow();
            authorizationWindow.Show(); 
            this.Close(); 
        }
    }
}

