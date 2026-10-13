.class public LXC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/net/Uri;

.field public final synthetic x:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXC0;->x:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    iput-object p2, p0, LXC0;->w:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LXC0;->x:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LXC0;->w:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
