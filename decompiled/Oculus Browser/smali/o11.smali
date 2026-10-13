.class public Lo11;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ln11;

.field public final b:Landroid/content/IntentFilter;

.field public final c:Landroid/content/BroadcastReceiver;

.field public final d:Z

.field public e:Lm11;

.field public f:Z


# direct methods
.method public constructor <init>(Ln11;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Galaxy Nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    new-instance v1, Lm11;

    .line 3
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "batterymanager"

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManager;

    invoke-direct {v1, v2}, Lm11;-><init>(Landroid/os/BatteryManager;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lo11;->b:Landroid/content/IntentFilter;

    .line 7
    new-instance v2, Ll11;

    invoke-direct {v2, p0}, Ll11;-><init>(Lo11;)V

    iput-object v2, p0, Lo11;->c:Landroid/content/BroadcastReceiver;

    .line 8
    iput-object p1, p0, Lo11;->a:Ln11;

    .line 9
    iput-boolean v0, p0, Lo11;->d:Z

    .line 10
    iput-object v1, p0, Lo11;->e:Lm11;

    return-void
.end method
