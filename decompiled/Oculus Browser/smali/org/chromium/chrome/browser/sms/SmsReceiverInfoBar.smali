.class public Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public J:Ljava/lang/String;

.field public K:Lorg/chromium/ui/base/WindowAndroid;

.field public L:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p2}, LGZ;->a(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0600e9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p4, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->J:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->K:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;-><init>(Lorg/chromium/ui/base/WindowAndroid;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Blink.Sms.Receive.Infobar"

    .line 2
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->K:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 5
    sget-object v4, Lrc1;->x:Lrc1;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v4, v0, v3}, Lrc1;->a(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v4, v3}, Lrc1;->a(Landroid/view/View;)Z

    const/4 v0, 0x1

    .line 8
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;II)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->L:Ljava/lang/Long;

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 11
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->L:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/sms/SmsReceiverInfoBar;->L:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string v2, "Blink.Sms.Receive.TimeCancelOnKeyboardDismissal"

    .line 4
    invoke-static {v2, v0, v1}, LfV;->b(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
