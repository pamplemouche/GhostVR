.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;
.super Ljava/lang/Object;
.source "AnytimeTabletAppsViewV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppData"
.end annotation


# instance fields
.field final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field final applicationKey:Ljava/lang/String;

.field final horizonApp:Lcom/oculus/library/model/App;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/oculus/library/model/App;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationKey:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 286
    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->horizonApp:Lcom/oculus/library/model/App;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/oculus/library/model/App;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;-><init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Lcom/oculus/library/model/App;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Ljava/util/Map;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->addToMap(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Ljava/util/Map;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->removeFromMap(Ljava/util/Map;)V

    return-void
.end method

.method private addToMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;)V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationKey:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
            ">;)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->applicationKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
