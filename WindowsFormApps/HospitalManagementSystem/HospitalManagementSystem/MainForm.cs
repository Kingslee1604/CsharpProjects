using System.Windows.Forms;

namespace HospitalManagementSystem
{
    public partial class MainForm : Form
    {
        private List<Patient> patients = new List<Patient>();
        private Patient? selectedPatient;

        public MainForm()
        {
            InitializeComponent();
            InitializeDataGridView();
        }

        // Remove the dynamic creation of DataGridView in your code

        // Update InitializeDataGridView to remove the dynamic creation
        private void InitializeDataGridView()
        {
            // Attach an event handler for selection change
            dataGridView1.SelectionChanged += DataGridViewPatients_SelectionChanged;
 
            // Add columns and set DataPropertyName
            dataGridView1.AutoGenerateColumns = true; // Enable AutoGenerateColumns
            dataGridView1.Columns.Add("Name", "Name");
            dataGridView1.Columns["Name"].DataPropertyName = "Name";

            dataGridView1.Columns.Add("Address", "Address");
            dataGridView1.Columns["Address"].DataPropertyName = "Address";

            dataGridView1.Columns.Add("PhoneNumber", "PhoneNumber");
            dataGridView1.Columns["PhoneNumber"].DataPropertyName = "PhoneNumber";

            // Call a method to update the DataGridView with the current patients
            UpdatePatientGrid();
        }

        // Update UpdatePatientGrid to use dataGridView1
        private void UpdatePatientGrid()
        {
            try
            {
                // Update DataGridView with the current list of patients
                dataGridView1.DataSource = null;
                dataGridView1.DataSource = patients;
                dataGridView1.Invalidate(); // Invalidate to force repaint
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}");
            }
        }

        private void DataGridViewPatients_SelectionChanged(object sender, EventArgs e)
        {
            // Handle selection change event
            if (dataGridView1.SelectedRows.Count == 0)
            {
                // No row selected, exit the event handler
                buttonEditPatient.Enabled = false;
                buttonDeletePatient.Enabled = false;
                return;
            }

            // Continue with the rest of the event handler logic
            buttonEditPatient.Enabled = true;
            buttonDeletePatient.Enabled = true;

            // Additional logic if needed...

            // If you need to access the selected row, do it like this:
            DataGridViewRow selectedRow = dataGridView1.SelectedRows[0];
            // Now you can access the data in the selected row using selectedRow.Cells[index].Value
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < dataGridView1.Rows.Count)
            {
                selectedPatient = dataGridView1.Rows[e.RowIndex].DataBoundItem as Patient;

                // Populate input fields with selected patient's information
                if (selectedPatient != null)
                {
                    txtName.Text = selectedPatient.Name;
                    txtAddress.Text = selectedPatient.Address;
                    txtPhoneNumber.Text = selectedPatient.PhoneNumber;
                }

                // Enable/disable buttons based on selected rows
                buttonEditPatient.Enabled = selectedPatient != null;
                buttonDeletePatient.Enabled = selectedPatient != null;
            }
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            // Load initial data or setup UI elements
            InitializeDataGridView();
        }

        private void btnAddPatient_Click(object sender, EventArgs e)
        {
            if (selectedPatient == null)
            {
                // Adding a new patient
                Patient newPatient = new Patient
                {
                    Name = txtName.Text,
                    Address = txtAddress.Text,
                    PhoneNumber = txtPhoneNumber.Text
                };

                patients.Add(newPatient);
            }
            else
            {
                // Editing an existing patient
                selectedPatient.Name = txtName.Text;
                selectedPatient.Address = txtAddress.Text;
                selectedPatient.PhoneNumber = txtPhoneNumber.Text;

                // Reset selectedPatient after editing
                selectedPatient = null;
            }

            Console.WriteLine("Patients Count: " + patients.Count);

            // Update DataGridView
            UpdatePatientGrid();

            // Clear input fields
            ClearInputFields();
        }

        private void buttonEditPatient_Click(object sender, EventArgs e)
        {
            // Get the selected patient from the DataGridView
            if (dataGridView1?.SelectedRows.Count > 0)
            {
                int selectedIndex = dataGridView1.SelectedRows[0].Index;

                // Ensure the selected index is valid
                if (selectedIndex >= 0 && selectedIndex < patients.Count)
                {
                    selectedPatient = patients[selectedIndex];

                    // Populate input fields with selected patient's information
                    if (selectedPatient != null)
                    {
                        txtName.Text = selectedPatient.Name;
                        txtAddress.Text = selectedPatient.Address;
                        txtPhoneNumber.Text = selectedPatient.PhoneNumber;
                    }
                }
                else
                {
                    MessageBox.Show("Invalid selected index.");
                }
            }
            else
            {
                MessageBox.Show("Please select a patient to edit.");
            }
        }

        private void buttonDeletePatient_Click(object sender, EventArgs e)
        {
            // Delete the selected patient from the list
            if (dataGridView1.SelectedRows.Count > 0)
            {
                int selectedIndex = dataGridView1.SelectedRows[0].Index;

                // Ensure the selected index is valid
                if (selectedIndex >= 0 && selectedIndex < patients.Count)
                {
                    patients.RemoveAt(selectedIndex);

                    // Update DataGridView
                    UpdatePatientGrid();
                }
                else
                {
                    MessageBox.Show("Invalid selected index.");
                }
            }
            else
            {
                MessageBox.Show("Please select a patient to delete.");
            }
        }

        private void ClearInputFields()
        {
            // Clear input fields
            txtName.Clear();
            txtAddress.Clear();
            txtPhoneNumber.Clear();
        }
    }
}
