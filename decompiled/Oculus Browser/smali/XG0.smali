.class public LXG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LaH0;


# direct methods
.method public constructor <init>(LaH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXG0;->w:LaH0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LXG0;->w:LaH0;

    .line 2
    iget-object v0, v0, LaH0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v1

    const v2, 0x7f130338

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v1, v0, v2, v3, v4}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    return-void
.end method
