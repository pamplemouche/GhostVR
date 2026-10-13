.class public final synthetic Lzt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzt0;->w:Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lzt0;->w:Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lue0;->a()Lue0;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v0, v0, Lorg/chromium/chrome/browser/password_manager/CredentialLeakDialogBridge;->c:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    const v3, 0x7f130334

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v2, v0, v3, v4}, Lue0;->a(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
