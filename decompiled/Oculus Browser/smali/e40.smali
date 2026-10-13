.class public final synthetic Le40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

.field public final b:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    iput-boolean p2, p0, Le40;->b:Z

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    iget-boolean v1, p0, Le40;->b:Z

    check-cast p1, Landroid/net/Uri;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    .line 2
    invoke-static {p1, v1}, LOD0;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 5
    :cond_0
    throw p1
.end method
