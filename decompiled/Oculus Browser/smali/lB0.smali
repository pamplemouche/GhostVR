.class public final synthetic LlB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LlB0;->a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LlB0;->a:Lorg/chromium/chrome/browser/preferences/sync/AccountManagementFragment;

    check-cast p1, Landroid/content/Intent;

    .line 1
    invoke-virtual {v0}, Lz2;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lz2;->E()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lz2;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/chrome/browser/signin/SigninUtils;->a(Landroid/content/Context;)Z

    :cond_2
    :goto_0
    return-void
.end method
