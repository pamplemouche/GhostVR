.class public Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;
.super Landroid/widget/LinearLayout;
.source "AnytimeTabletHostViewV2.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field private mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

.field private mTablets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
    .locals 6

    .line 27
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    .line 28
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mTablets:Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->values()[Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 33
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->getResourceIdForTablet(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;)I

    move-result v3

    .line 35
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 36
    invoke-virtual {v4, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;

    .line 37
    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mSharedState:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;

    invoke-virtual {v3, v4, p0, v5}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->addView(Landroid/view/View;)V

    .line 39
    iget-object v4, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mTablets:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    sget-object p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->APPS:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->showTablet(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;)V

    return-void
.end method

.method public showTablet(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mTablets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    .line 48
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->mTablets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;

    .line 49
    invoke-virtual {v1, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletBaseViewV2;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
