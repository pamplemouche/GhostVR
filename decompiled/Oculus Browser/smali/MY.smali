.class public abstract LMY;
.super Landroid/app/backup/BackupAgent;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, LMY;

    const-string v5, "first_run_signin_setup"

    const-string v6, "metrics_reporting"

    const-string v1, "BANDWIDTH_REDUCTION_PROXY_ENABLED"

    const-string v2, "first_run_tos_accepted"

    const-string v3, "first_run_flow"

    const-string v4, "lightweight_first_run_flow"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LMY;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 4

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "android_restore_status"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v3, "Android.RestoreResult"

    .line 3
    invoke-static {v3, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-static {v0, v2, v1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
