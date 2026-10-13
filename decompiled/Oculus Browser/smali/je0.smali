.class public Lje0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lle0;


# direct methods
.method public constructor <init>(Lle0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lje0;->a:Lle0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ssb_service:ssb_broadcasts_account_change_to_chrome"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lle0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lje0;->a:Lle0;

    .line 4
    iget-object v1, v0, Lle0;->b:Lre0;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lre0;->b()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lle0;->b:Lre0;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lje0;->a:Lle0;

    .line 8
    iget-boolean v0, v0, Lle0;->c:Z

    if-nez v0, :cond_2

    const-string v0, "Search.GsaBroadcastsAccountChanges"

    .line 9
    invoke-static {v0, p1}, LfV;->a(Ljava/lang/String;Z)V

    .line 10
    iget-object p1, p0, Lje0;->a:Lle0;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lle0;->c:Z

    :cond_2
    return-void
.end method
