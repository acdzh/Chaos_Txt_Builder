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
using System.Windows.Navigation;
using System.Windows.Shapes;
using JiebaNet;
using JiebaNet.Segmenter;

namespace ChaosTxtBuilder {
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window {
        public MainWindow() {      
            InitializeComponent();
        }
        private void GoButtonClick(object sender, RoutedEventArgs e) {
            tb1.IsEnabled = false;
            string srcText = tb1.Text;
            if(srcText == "" || srcText == null) {
                MessageBox.Show("内容为空", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            } else {
                JiebaSegmenter segmenter = new JiebaSegmenter();
                IEnumerable<string> segments = segmenter.Cut(srcText);
                string outText = "";
                foreach(string s in segments) {
                    if(NeedChaos() && s.Length > 1) {
                        Random rd = new Random();
                        int n1 = rd.Next(0, s.Length);
                        int n2 = rd.Next(0, s.Length);
                        while(n2 == n1) {
                            n2 = rd.Next(0, s.Length);
                        }
                        char[] arr = s.ToCharArray();
                        arr[n1] = s[n2];
                        arr[n2] = s[n1];
                        string s_t = string.Join("", arr);
                        outText += s_t;
                    } else {
                        outText += s;
                    }
                }
                tb2.Text = outText;
                tb1.IsEnabled = true;
            }
        }
        private void CopyButtonClick(object sender, RoutedEventArgs e) {
            Clipboard.SetDataObject(tb2.Text);
            MessageBox.Show("OK.");
        }
        private void SliderChange(object sender, RoutedEventArgs e) {
            label1.Text = "混乱等级: " + slider1.Value.ToString() + " / 10";
        }

        public bool NeedChaos() {
            Random rd = new Random();
            int n = rd.Next(1, 11);
            if(n <= slider1.Value) {
                return true;
            } else {
                return false ;
            }
        }
    }


}
