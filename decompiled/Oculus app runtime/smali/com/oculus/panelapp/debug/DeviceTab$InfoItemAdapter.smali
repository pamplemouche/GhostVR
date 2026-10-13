.class Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeviceTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/DeviceTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/DeviceTab;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/DeviceTab;Landroid/content/Context;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    .line 224
    sget p1, Lcom/oculus/panelapp/debug/R$layout;->device_info_item:I

    sget v0, Lcom/oculus/panelapp/debug/R$id;->device_info_item_label:I

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method private isHeaderPosition(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 243
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->getItem(I)Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    move-result-object v1

    .line 244
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->getItem(I)Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    move-result-object p1

    .line 246
    iget-object v1, v1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    iget-object p1, p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {v0}, Lcom/oculus/panelapp/debug/DeviceTab;->access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->getItem(I)Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    :cond_0
    iget-object p3, p0, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->this$0:Lcom/oculus/panelapp/debug/DeviceTab;

    invoke-static {p3}, Lcom/oculus/panelapp/debug/DeviceTab;->access$600(Lcom/oculus/panelapp/debug/DeviceTab;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;

    .line 257
    sget v0, Lcom/oculus/panelapp/debug/R$id;->device_info_item_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    sget v1, Lcom/oculus/panelapp/debug/R$id;->device_info_item_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    sget v2, Lcom/oculus/panelapp/debug/R$id;->device_info_item_value:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 261
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/DeviceTab$InfoItemAdapter;->isHeaderPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 262
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object p1, p3, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->category:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/DeviceTab$Category;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :goto_0
    iget-object p1, p3, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->label:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p3, Lcom/oculus/panelapp/debug/DeviceTab$InfoItem;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
