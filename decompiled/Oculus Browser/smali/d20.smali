.class public final synthetic Ld20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Le20;

.field public final x:Z

.field public final y:Z


# direct methods
.method public constructor <init>(Le20;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld20;->w:Le20;

    iput-boolean p2, p0, Ld20;->x:Z

    iput-boolean p3, p0, Ld20;->y:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ld20;->w:Le20;

    iget-boolean v1, p0, Ld20;->x:Z

    iget-boolean v2, p0, Ld20;->y:Z

    .line 1
    iget-object v0, v0, Le20;->c:Lv20;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    const-string v0, "TrustedWebActivity.ClearDataDialogOnUninstallAccepted"

    goto :goto_0

    :cond_0
    const-string v0, "TrustedWebActivity.ClearDataDialogOnClearAppDataAccepted"

    .line 2
    :goto_0
    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
