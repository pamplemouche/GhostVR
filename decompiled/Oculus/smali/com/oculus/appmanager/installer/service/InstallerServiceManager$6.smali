.class Lcom/oculus/appmanager/installer/service/InstallerServiceManager$6;
.super Ljava/lang/Object;
.source "InstallerServiceManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/service/InstallerServiceManager;->getNextQueuedUpdate()Lcom/oculus/appmanager/info/ApkUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/appmanager/info/ApkUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/service/InstallerServiceManager;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$6;->this$0:Lcom/oculus/appmanager/installer/service/InstallerServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I
    .locals 4

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getStateTimestamp()J

    move-result-wide v0

    long-to-int v0, v0

    .line 683
    invoke-virtual {p2}, Lcom/oculus/appmanager/info/ApkUpdateInfo;->getExtras()Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfo$ApkUpdateExtras;->getStateTimestamp()J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 679
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    check-cast p2, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/appmanager/installer/service/InstallerServiceManager$6;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I

    move-result v0

    return v0
.end method
