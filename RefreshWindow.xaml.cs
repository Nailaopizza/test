using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace курсач
{
    /// <summary>
    /// Interaction logic for RefreshWindow.xaml
    /// </summary>
    public partial class RefreshWindow : Window
    {
        private Order_ _currentRequest;
        public RefreshWindow(Order_ request)
        {
            InitializeComponent();
            _currentRequest = request;
            StatusComboBox.ItemsSource = termEntities.GetContext().Status.ToList();
            WorkerComboBox.ItemsSource = termEntities.GetContext().Workers.ToList();
            FaultTypeComboBox.ItemsSource = termEntities.GetContext().Items.ToList();
            ClientComboBox.ItemsSource = termEntities.GetContext().Clients.ToList();
            StatusComboBox.SelectedItem = request.Status;
            WorkerComboBox.SelectedItem = request.Worker;
            FaultTypeComboBox.SelectedItem = request.Item;
            ClientComboBox.SelectedItem = request.Client;
            Vis();
        }
        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {
            var context = termEntities.GetContext();
            _currentRequest.StatusID = ((Status)StatusComboBox.SelectedItem).StatusID;
            _currentRequest.WorkerID = ((Worker)WorkerComboBox.SelectedItem).WorkerID;
            _currentRequest.ItemID = ((Item)FaultTypeComboBox.SelectedItem).ItemID;
            _currentRequest.ClientID = ((Client)ClientComboBox.SelectedItem).ClientID;
            context.SaveChanges(); MessageBox.Show("Данные заявки обновлены"); this.Close();
        }

        private void Vis()
        {
            switch (Authorization.authorizationRole)
            {
                case "админ":
                    break;
                case "модер":
                    break;
                case "юзер":
                    UpdateButton.Visibility = Visibility.Collapsed;
                    break;
                default: return;
            }
        }
    }
}
