.class Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QuickLaunchTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/QuickLaunchTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickLaunchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/panelapp/debug/QuickLaunchTab;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/QuickLaunchTab;Landroid/content/Context;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->this$0:Lcom/oculus/panelapp/debug/QuickLaunchTab;

    .line 153
    sget p1, Lcom/oculus/panelapp/debug/R$layout;->quick_launch_item:I

    sget v0, Lcom/oculus/panelapp/debug/R$id;->item_app_name:I

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object p0

    return-object p0
.end method

.method private getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    return-object p1
.end method

.method private isHeaderPosition(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 178
    invoke-direct {p0, v1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object v1

    .line 179
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object p1

    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refresh()V
    .locals 11

    .line 232
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 235
    invoke-static {}, Lcom/oculus/vrshell/SystemUXRoute;->values()[Lcom/oculus/vrshell/SystemUXRoute;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 236
    iget-object v6, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    new-instance v7, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;

    invoke-virtual {v5}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_3

    .line 244
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 246
    invoke-static {v4}, Lcom/oculus/vrshell/util/PackageUtil;->isVrApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    iget-object v5, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    new-instance v6, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;

    .line 249
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_1
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 254
    invoke-static {v0, v5}, Lcom/oculus/vrshell/util/PackageUtil;->queryPanelServices(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 257
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 258
    iget-object v7, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    new-instance v8, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;

    .line 260
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v6}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 268
    invoke-virtual {p0}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    invoke-virtual {p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object p3

    .line 192
    sget v0, Lcom/oculus/panelapp/debug/R$id;->item_app_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    sget v1, Lcom/oculus/panelapp/debug/R$id;->item_app_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->isHeaderPosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;->getQuickListItem(I)Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 200
    const-class v3, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickApp;

    if-ne v2, v3, :cond_1

    const-string v2, "VR Packages"

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_1
    const-class v3, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickPanel;

    if-ne v2, v3, :cond_2

    const-string v2, "VrShell Panel Services"

    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_2
    const-class v3, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickSystemUX;

    if-ne v2, v3, :cond_3

    const-string v2, "System UX"

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    invoke-virtual {p3}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickListItem;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    new-instance p3, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter$1;-><init>(Lcom/oculus/panelapp/debug/QuickLaunchTab$QuickLaunchAdapter;I)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
