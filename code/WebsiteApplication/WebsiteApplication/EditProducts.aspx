<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProducts.aspx.cs" Inherits="WebsiteApplication.EditProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products.aspx">Trở lại</asp:HyperLink>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="12" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" GridLines="None" EmptyDataText="**" DefaultMode="Edit" OnItemUpdated="DetailsView1_ItemUpdated">
        <Fields>
            <asp:TemplateField HeaderText="Mã sản phẩm" SortExpression="MaSanPham">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaSanPham") %>'></asp:Label>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MaSanPham") %>' MaxLength="10">*</asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mã sản phẩm là bắt buộc và là duy nhất" ForeColor="Red"
                        ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("MaSanPham") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tên sản phẩm" SortExpression="TenSanPham">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TenSanPham")%>' MaxLength="50"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên sản phẩm là bắt buộc" ForeColor="Red"
                        ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TenSanPham") %>' MaxLength="50"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tên sản phẩm là bắt buộc" ForeColor="Red"
                        ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("TenSanPham") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Loại sản phẩm" SortExpression="LoaiSanPham">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LoaiSanPham") %>' MaxLength="50"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Loại sản phẩm là bắt buộc" ForeColor="Red"
                        ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LoaiSanPham") %>' MaxLength="50"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Loại sản phẩm là bắt buộc" ForeColor="Red"
                        ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LoaiSanPham") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Thời gian bảo hành" SortExpression="ThoiGianBaoHanh">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ThoiGianBaoHanh") %>' MaxLength="12"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Thời gian bảo hành phải là số nguyên dương" ForeColor="Red"
                        ValidationExpression="^[\d]{0,12}$" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" MinimumValue="0" MaximumValue="999999999999"
                        ErrorMessage="Thời gian bảo hành lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ControlToValidate="TextBox3" ForeColor="Red"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Thời gian bảo hành là bắt buộc" ForeColor="Red"
                        ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ThoiGianBaoHanh") %>' MaxLength="12"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ForeColor="Red"
                        ValidationExpression="^[\d]{0,12}$"
                        ErrorMessage="Thời gian bảo hành phải là số nguyên dương"  
                        ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" MinimumValue="0" MaximumValue="999999999999"
                        ErrorMessage="Thời gian bảo hành lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ControlToValidate="TextBox4" ForeColor="Red"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Thời gian bảo hành là bắt buộc" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ThoiGianBaoHanh") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn giá nhập" SortExpression="DonGiaNhap">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DonGiaNhap") %>' MaxLength="20"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ValidationExpression="^[\d]{0,12}.[\d]{0,8}$"
                         ErrorMessage="Đơn giá nhập phải là số" ForeColor="Red"
                        ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Đơn giá nhập phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                         MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox4"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Đơn giá nhập là bắt buộc" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DonGiaNhap") %>' MaxLength="20"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"  ForeColor="Red"
                        ValidationExpression="^[\d]{0,12}.[\d]{0,8}$"
                         ErrorMessage="Đơn giá nhập phải là số"
                        ControlToValidate="TextBox5" ></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Đơn giá nhập phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                         MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox5"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Đơn giá nhập là bắt buộc" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("DonGiaNhap") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn giá bán" SortExpression="DonGiaBan">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DonGiaBan") %>' MaxLength="20"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"   ForeColor="Red"
                        ValidationExpression="^[\d]{0,12}.[\d]{0,8}$"
                         ErrorMessage="Đơn giá nhập phải là số"
                        ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="Đơn giá bán phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                         MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox5"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Đơn giá bán là bắt buộc" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DonGiaBan") %>' MaxLength="20"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"   ForeColor="Red"
                        ValidationExpression="^[\d]{0,12}.[\d]{0,8}$"
                         ErrorMessage="Đơn giá nhập phải là số"
                        ControlToValidate="TextBox6"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Đơn giá bán phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                        MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox6"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Đơn giá bán là bắt buộc" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("DonGiaBan") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Số lượng" SortExpression="SoLuong">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("SoLuong") %>' MaxLength="12"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"  
                        ValidationExpression="^[\d]{0,12}$"
                         ErrorMessage="Số lượng phải là số nguyên dương" ForeColor="Red"
                        ControlToValidate="TextBox6"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="Số lượng phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                         MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox6"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Số lượng là bắt buộc" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("SoLuong") %>' MaxLength="20"></asp:TextBox>
                    <br/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  
                        ValidationExpression="^[\d]{0,12}$"
                         ErrorMessage="Số lượng phải là số nguyên dương" ForeColor="Red"
                        ControlToValidate="TextBox7"></asp:RegularExpressionValidator>
                    <br/>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="Số lượng phải lớn hơn hoặc bằng 0 và bé hơn 999,999,999,999" ForeColor="Red"
                          MinimumValue="0" MaximumValue="999999999999" ControlToValidate="TextBox7"></asp:RangeValidator>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Số lượng là bắt buộc" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("SoLuong") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn vị tính" SortExpression="DonViTinh">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("DonViTinh") %>' MaxLength="10" ></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Đơn vị tính là bắt buộc" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DonViTinh") %>' MaxLength="10"></asp:TextBox>
                    <br/>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Đơn vị tính là bắt buộc" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DonViTinh") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ghi chú" SortExpression="GhiChu">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("GhiChu") %>' MaxLength="100"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("GhiChu") %>' MaxLength="100"></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("GhiChu") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" CancelText="Hủy" EditText="Sửa" NewText="Thêm mới" UpdateText="Cập nhật" InsertText="Thêm" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SANPHAM] ([MaSanPham], [TenSanPham], [LoaiSanPham], [ThoiGianBaoHanh], [DonGiaNhap], [DonGiaBan], [SoLuong], [DonViTinh], [GhiChu]) VALUES (@MaSanPham, @TenSanPham, @LoaiSanPham, @ThoiGianBaoHanh, @DonGiaNhap, @DonGiaBan, @SoLuong, @DonViTinh, @GhiChu)" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaSanPham] = @MaSanPham)" UpdateCommand="UPDATE [SANPHAM] SET [TenSanPham] = @TenSanPham, [LoaiSanPham] = @LoaiSanPham, [ThoiGianBaoHanh] = @ThoiGianBaoHanh, [DonGiaNhap] = @DonGiaNhap, [DonGiaBan] = @DonGiaBan, [SoLuong] = @SoLuong, [DonViTinh] = @DonViTinh, [GhiChu] = @GhiChu WHERE [MaSanPham] = @MaSanPham">
        <DeleteParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="LoaiSanPham" Type="String" />
            <asp:Parameter Name="ThoiGianBaoHanh" Type="Int32" />
            <asp:Parameter Name="DonGiaNhap" Type="Decimal" />
            <asp:Parameter Name="DonGiaBan" Type="Decimal" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSanPham" QueryStringField="masanpham" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="LoaiSanPham" Type="String" />
            <asp:Parameter Name="ThoiGianBaoHanh" Type="Int32" />
            <asp:Parameter Name="DonGiaNhap" Type="Decimal" />
            <asp:Parameter Name="DonGiaBan" Type="Decimal" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonViTinh" Type="String" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="MaSanPham" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
