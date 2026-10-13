.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$2;
.super Ljava/lang/Object;
.source "AnytimeTabletAppsViewV2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->getRecentApps(Ljava/util/Map;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$2;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;)I
    .locals 2

    .line 181
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->horizonApp:Lcom/oculus/library/model/App;

    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iget-object p1, p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;->horizonApp:Lcom/oculus/library/model/App;

    iget-wide p1, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 176
    check-cast p1, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;

    check-cast p2, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$2;->compare(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$AppData;)I

    move-result p1

    return p1
.end method
