.class public final synthetic Lk60;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Li20;


# instance fields
.field public final a:Lo60;

.field public final b:Lh20;

.field public final c:Landroidx/browser/customtabs/CustomTabsSessionToken;

.field public final d:I

.field public final e:Z

.field public final f:Ln60;


# direct methods
.method public constructor <init>(Lo60;Lh20;Landroidx/browser/customtabs/CustomTabsSessionToken;IZLn60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk60;->a:Lo60;

    iput-object p2, p0, Lk60;->b:Lh20;

    iput-object p3, p0, Lk60;->c:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iput p4, p0, Lk60;->d:I

    iput-boolean p5, p0, Lk60;->e:Z

    iput-object p6, p0, Lk60;->f:Ln60;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lh20;ZLjava/lang/Boolean;)V
    .locals 8

    iget-object v0, p0, Lk60;->a:Lo60;

    iget-object v1, p0, Lk60;->b:Lh20;

    iget-object v2, p0, Lk60;->c:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget v3, p0, Lk60;->d:I

    iget-boolean v4, p0, Lk60;->e:Z

    iget-object v5, p0, Lk60;->f:Ln60;

    .line 1
    invoke-virtual {v0, v2}, Lo60;->d(Landroidx/browser/customtabs/CustomTabsSessionToken;)LBi;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "online"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    iget-object v1, v1, Lh20;->a:Landroid/net/Uri;

    .line 5
    check-cast v0, LHi;

    .line 6
    :try_start_0
    iget-object v0, v0, LHi;->a:Landroidx/browser/customtabs/CustomTabsSessionToken;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsSessionToken;->a:LA;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Ly;

    :try_start_1
    invoke-virtual {v0, v3, v1, p3, v2}, Ly;->a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CustomTabsSessionToken"

    const-string v1, "RemoteException during ICustomTabsCallback transaction"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 8
    iget-object v0, v5, Ln60;->d:Ln20;

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Ln20;->a(Ljava/lang/String;Lh20;ZLjava/lang/Boolean;)V

    :cond_2
    return-void
.end method
