.class public LmB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LyF0;


# instance fields
.field public final synthetic a:Ls2;

.field public final synthetic b:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;Ls2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LmB0;->b:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    iput-object p2, p0, LmB0;->a:Ls2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LmB0;->a:Ls2;

    invoke-virtual {v0}, Lz2;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LmB0;->a:Ls2;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ls2;->g(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, LmB0;->a:Ls2;

    iget-object v1, p0, LmB0;->b:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    .line 2
    iget-object v1, v1, Lz2;->N:LY2;

    const-string v2, "clear_data_progress"

    .line 3
    invoke-virtual {v0, v1, v2}, Ls2;->a(LH2;Ljava/lang/String;)V

    return-void
.end method
