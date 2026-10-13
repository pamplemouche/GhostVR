.class public final Lnr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lkr;

.field public final synthetic x:Lmr;


# direct methods
.method public constructor <init>(Lmr;Lkr;)V
    .locals 0

    iput-object p1, p0, Lnr;->x:Lmr;

    iput-object p2, p0, Lnr;->w:Lkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v0, p0, Lnr;->x:Lmr;

    .line 1
    iget-object v0, v0, Lmr;->a:Lir;

    .line 2
    iget-object v1, p0, Lnr;->w:Lkr;

    iget-object v1, v1, Lkr;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lir;->handleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lnr;->w:Lkr;

    invoke-virtual {v0}, Lkr;->a()V

    return-void
.end method
