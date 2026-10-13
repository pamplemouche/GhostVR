.class public Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq70;


# instance fields
.field public a:Lr70;

.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->b:J

    return-void
.end method

.method private closeDialog()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->b:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->a:Lr70;

    .line 3
    iget-object v0, v0, Lr70;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;
    .locals 21

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v2, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;

    move-wide/from16 v3, p3

    invoke-direct {v2, v3, v4}, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;-><init>(J)V

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v5

    .line 4
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    move-object v3, v1

    check-cast v3, LOY;

    .line 6
    iget-object v3, v3, LOY;->J:LIl0;

    .line 7
    invoke-interface {v3}, LIl0;->b()Z

    move-result v3

    const/4 v12, 0x1

    xor-int/lit8 v8, v3, 0x1

    .line 8
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    move-object v3, v10

    move/from16 v6, p2

    invoke-static/range {v3 .. v9}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 9
    new-instance v14, Landroid/text/SpannableString;

    const v3, 0x7f130648

    new-array v4, v12, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 10
    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v14}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v8

    const-class v9, Ljava/lang/Object;

    move-object v6, v10

    move v7, v11

    move-object v10, v14

    move v11, v0

    invoke-static/range {v6 .. v11}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    const v0, 0x7f130647

    .line 13
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v0, 0x7f130646

    .line 14
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v12, [LWe1;

    new-instance v4, LWe1;

    new-instance v6, LVe1;

    .line 15
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ls70;

    invoke-direct {v8, v2}, Ls70;-><init>(Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;)V

    invoke-direct {v6, v7, v8}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    const-string v7, "<link>"

    const-string v8, "</link>"

    invoke-direct {v4, v7, v8, v6}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v5

    .line 16
    invoke-static {v0, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v19

    const v0, 0x7f130645

    .line 17
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 18
    new-instance v0, Lp70;

    const-string v15, ""

    move-object v13, v0

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v13 .. v20}, Lp70;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 19
    new-instance v3, Lr70;

    invoke-direct {v3, v1, v2, v0}, Lr70;-><init>(Landroid/app/Activity;Lq70;Lp70;)V

    iput-object v3, v2, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->a:Lr70;

    return-object v2
.end method

.method private removeDevice(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->a:Lr70;

    .line 2
    iget-object v1, v0, Lr70;->k:Lj70;

    invoke-virtual {v1, p1}, Lj70;->c(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {v0, p1}, Lr70;->a(I)V

    return-void
.end method

.method private setIdleState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->a:Lr70;

    .line 2
    iget-object v1, v0, Lr70;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lr70;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->b:J

    .line 4
    invoke-static {v0, v1}, LJ/N;->MyQOumx4(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->b:J

    .line 6
    invoke-static {v0, v1, p1}, LJ/N;->M8m3iwzV(JLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/UsbChooserDialog;->a:Lr70;

    .line 2
    iget-object v1, v0, Lr70;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v1, v0, Lr70;->k:Lj70;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v2}, Lj70;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1}, Lr70;->a(I)V

    return-void
.end method
