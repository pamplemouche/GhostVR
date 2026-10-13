.class public final synthetic LBt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBt0;->a:Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LBt0;->a:Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1
    iget-wide v1, v0, Lorg/chromium/chrome/browser/password_manager/OnboardingDialogBridge;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 2
    invoke-static {v1, v2, v0}, LJ/N;->MrUERaCw(JLjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v1, v2, v0}, LJ/N;->Mf6QB57w(JLjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1, v2, v0}, LJ/N;->M0BYACf2(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method
