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
    /// Interaction logic for AddEditWindow.xaml
    /// </summary>
    public partial class AddEditWindow : Window
    {
        Order_ request;
        public AddEditWindow() 
        {
            InitializeComponent();
            CreateNewOrder();
            Combo_Status.ItemsSource = termEntities.GetContext().Status.ToList();
            EquipmentComboBox.ItemsSource = termEntities.GetContext().Items.ToList();
        }
        private void btnSave_Click(Object sender, RoutedEventArgs e) 
        { 
            StringBuilder error = new StringBuilder();
            if (request.OrderNumber == null) 
                error.AppendLine("Введите номер заявки!");
            else if(!int.TryParse(request.OrderNumber.ToString(), out int applicationNumber) || applicationNumber <= 0) 
                error.AppendLine("Номер заявки должен иметь положительное и не отрицательное значение!"); 
            else if(termEntities.GetContext().Order_.Any(row => row.OrderNumber == request.OrderNumber)) 
                error.AppendLine("Номер заявки уже существует!");
            if (request.DateAndTime == null || request.DateAndTime == DateTime.MinValue) 
                error.AppendLine("Укажите дату!");
            if (Combo_Status.SelectedItem != null && Combo_Status.SelectedItem is Status selectedStatus) 
                request.StatusID = selectedStatus.StatusID;
            else error.AppendLine("Выберите статус!"); 
            if (string.IsNullOrWhiteSpace(EquipmentComboBox.Text))
                error.AppendLine("Укажите комплект!"); 
            if (string.IsNullOrWhiteSpace(ClientTextBox.Text))
                error.AppendLine("Укажитеклиента!");
            if (error.Length > 0) 
            { 
                MessageBox.Show(error.ToString(), "Предупреждение!", MessageBoxButton.OK, MessageBoxImage.Information);
                return; 
            } 
            try 
            { 
                var context = termEntities.GetContext();
                Client client = new Client()
                {
                    ClientName = ClientTextBox.Text
                };
                context.Clients.Add(client);
                context.SaveChanges();
                var clientId = client.ClientID;
                var selectedEquipment = EquipmentComboBox.SelectedItem as Item;
                request.ItemID = selectedEquipment.ItemID; 
                request.ClientID = clientId;
                context.Order_.Add(request);
                context.SaveChanges(); 
                MessageBox.Show("Информация сохранена"); 
                this.Close();
            } 
            catch (Exception ex) 
            {
                MessageBox.Show(ex.Message.ToString());
            }
            CreateNewOrder();
        }
        private void CreateNewOrder()
        {
            request = new Order_();
            DataContext = request;
        }
    }
}
