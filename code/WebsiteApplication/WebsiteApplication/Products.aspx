<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebsiteApplication.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Panel runat="server" Height="36px" >
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewProducts.aspx">Thêm mới</asp:HyperLink>
    </asp:Panel>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSanPham" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BorderStyle="Outset" Caption="Danh sách sản phẩm" CellPadding="12" ForeColor="Black" GridLines="None"  DataMember="DefaultView">
        <Columns>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã sản phẩm" ReadOnly="True" SortExpression="MaSanPham" />
            <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" SortExpression="TenSanPham" />
            <asp:BoundField DataField="LoaiSanPham" HeaderText="Loại sản phẩm" SortExpression="LoaiSanPham" />
            <asp:TemplateField HeaderText="Số lượng" SortExpression="SoLuong">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SoLuong") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("SoLuong") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Đơn giá nhập" SortExpression="DonGiaNhap">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DonGiaNhap") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DonGiaNhap", "{0:C} VND") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="MaSanPham" DataNavigateUrlFormatString="EditProducts.aspx?masanpham={0}" NavigateUrl="~/EditProducts.aspx" Text="Sửa" />
        </Columns>
        <EditRowStyle HorizontalAlign="Left" VerticalAlign="Top" Wrap="False" />
        <HeaderStyle Wrap="False" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SANPHAM] ([MaSanPham], [TenSanPham], [LoaiSanPham], [ThoiGianBaoHanh], [DonGiaNhap], [DonGiaBan], [SoLuong], [DonViTinh], [GhiChu]) VALUES (@MaSanPham, @TenSanPham, @LoaiSanPham, @ThoiGianBaoHanh, @DonGiaNhap, @DonGiaBan, @SoLuong, @DonViTinh, @GhiChu)" SelectCommand="SELECT * FROM [SANPHAM] WHERE ([MaSanPham] = @MaSanPham)" UpdateCommand="UPDATE [SANPHAM] SET [TenSanPham] = @TenSanPham, [LoaiSanPham] = @LoaiSanPham, [ThoiGianBaoHanh] = @ThoiGianBaoHanh, [DonGiaNhap] = @DonGiaNhap, [DonGiaBan] = @DonGiaBan, [SoLuong] = @SoLuong, [DonViTinh] = @DonViTinh, [GhiChu] = @GhiChu WHERE [MaSanPham] = @MaSanPham">
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
            <asp:ControlParameter ControlID="GridView1" Name="MaSanPham" PropertyName="SelectedValue" Type="String" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SANPHAM] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SANPHAM] ([MaSanPham], [TenSanPham], [LoaiSanPham], [SoLuong], [DonGiaNhap]) VALUES (@MaSanPham, @TenSanPham, @LoaiSanPham, @SoLuong, @DonGiaNhap)" SelectCommand="SELECT [MaSanPham], [TenSanPham], [LoaiSanPham], [SoLuong], [DonGiaNhap] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [TenSanPham] = @TenSanPham, [LoaiSanPham] = @LoaiSanPham, [SoLuong] = @SoLuong, [DonGiaNhap] = @DonGiaNhap WHERE [MaSanPham] = @MaSanPham">
        <DeleteParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSanPham" Type="String" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="LoaiSanPham" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonGiaNhap" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="LoaiSanPham" Type="String" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonGiaNhap" Type="Decimal" />
            <asp:Parameter Name="MaSanPham" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
