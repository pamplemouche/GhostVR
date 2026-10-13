.class Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper$1;
.super Ljava/lang/Object;
.source "InstallerServiceDumper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper;->printUpdates(Ljava/io/PrintStream;)V
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
.field final synthetic this$0:Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper$1;->this$0:Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p2, Lcom/oculus/appmanager/info/ApkUpdateInfo;->id:J

    iget-wide v2, p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;->id:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    check-cast p2, Lcom/oculus/appmanager/info/ApkUpdateInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/appmanager/installer/dumper/InstallerServiceDumper$1;->compare(Lcom/oculus/appmanager/info/ApkUpdateInfo;Lcom/oculus/appmanager/info/ApkUpdateInfo;)I

    move-result v0

    return v0
.end method
