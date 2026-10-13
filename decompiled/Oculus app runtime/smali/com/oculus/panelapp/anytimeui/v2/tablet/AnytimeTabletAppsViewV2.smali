.class public Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;
.super Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;
.source "AnytimeTabletAppsViewV2.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ViewState$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sHideApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mTabletHostView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.oculus.browser"

    const-string v2, "com.oculus.tv"

    const-string v3, "com.oculus.govrnux"

    const-string v4, "com.oculus.cinema"

    const-string v5, "com.oculus.venues"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->sHideApps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method private addRecentAppsToTablet(Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/anytimeui/R$dimen;->tablet_launcher_icon_layout_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 193
    sget v1, Lcom/oculus/panelapp/anytimeui/R$id;->recent_apps:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 195
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;

    .line 200
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/oculus/panelapp/anytimeui/R$layout;->tablet_button:I

    .line 201
    invoke-virtual {v5, v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    .line 202
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v6, v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 207
    invoke-virtual {v6, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 210
    invoke-virtual {v5, v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v6, v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->horizonApp:Lcom/oculus/library/model/App;

    iget-object v6, v6, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v6, v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v6, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {v4, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    :cond_1
    return-void
.end method

.method private static getAllDescendants(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 87
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 95
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v3}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getAllDescendants(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getApplications()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 132
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/HorizonUtil;->getApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/oculus/library/model/App;

    .line 143
    iget-object v3, v8, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v4, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    iget-object v3, v8, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 147
    sget-object v4, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->sHideApps:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 151
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 152
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 153
    sget-object v3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App is actually not installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_3
    new-instance v3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/oculus/library/model/App;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;)V

    .line 157
    invoke-static {v3, v2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private getRecentApps(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;

    .line 166
    iget-object v2, v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->horizonApp:Lcom/oculus/library/model/App;

    iget-wide v2, v2, Lcom/oculus/library/model/App;->totalActivityMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    new-instance p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$2;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$2;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static initializeButtonsFromContainer(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 76
    invoke-static {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getAllDescendants(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 79
    instance-of v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x2c

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applyHoverState(Landroid/view/View;Z)V
    .locals 0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 112
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mTabletHostView:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    .line 114
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->get_started_apps:I

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 115
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->initializeButtonsFromContainer(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getApplications()Ljava/util/Map;

    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getRecentApps(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->addRecentAppsToTablet(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->SELECT:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewEnter(Landroid/view/View;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->applyHoverState(Landroid/view/View;Z)V

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/panels/SoundType;->HOVER:Lcom/oculus/vrshell/panels/SoundType;

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->queueNativeAudio(Lcom/oculus/vrshell/panels/SoundType;)V

    return-void
.end method

.method public onViewExit(Landroid/view/View;)V
    .locals 1

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->applyHoverState(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
