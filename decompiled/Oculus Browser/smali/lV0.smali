.class public LlV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field public final synthetic a:LnV0;


# direct methods
.method public synthetic constructor <init>(LnV0;LkV0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LlV0;->a:LnV0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, LlV0;->a:LnV0;

    .line 2
    invoke-virtual {p1}, LnV0;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, LlV0;->a:LnV0;

    .line 4
    invoke-virtual {p1}, LnV0;->b()V

    :cond_0
    return-void
.end method
