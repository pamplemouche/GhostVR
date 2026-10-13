.class public Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Landroid/app/Dialog;

.field public c:Landroid/widget/ListView;

.field public d:Lj70;

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    .line 3
    iput-wide p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->f:J

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v2

    .line 5
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    check-cast p4, LOY;

    .line 7
    iget-object p4, p4, LOY;->J:LIl0;

    .line 8
    invoke-interface {p4}, LIl0;->b()Z

    move-result p4

    const/4 p5, 0x1

    xor-int/lit8 v5, p4, 0x1

    .line 9
    iget-object p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v3, p3

    invoke-static/range {v0 .. v6}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 10
    new-instance p3, Landroid/text/SpannableString;

    iget-object p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const v0, 0x7f1301a1

    new-array v1, p5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 11
    invoke-virtual {p4, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    move-object v3, p1

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const p2, 0x7f1301a0

    .line 15
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const p4, 0x7f13019f

    .line 17
    invoke-virtual {p2, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 18
    iget-object p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const v0, 0x7f13019e

    .line 19
    invoke-virtual {p4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0039

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0162

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 22
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p3, 0x7f0b02dd

    .line 24
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .line 25
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0b0222

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->c:Landroid/widget/ListView;

    .line 29
    new-instance p1, Lj70;

    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const v4, 0x7f0e003a

    invoke-direct {p1, v1, v2, v4}, Lj70;-><init>(Landroid/content/Context;ZI)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->d:Lj70;

    .line 30
    invoke-virtual {p1, p5}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 31
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->d:Lj70;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 33
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0b0365

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    .line 35
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p1, 0x7f0b0061

    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p1, p5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 39
    new-instance p2, Lc70;

    invoke-direct {p2, p0}, Lc70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0045

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 41
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1, p5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 43
    new-instance p2, Ld70;

    invoke-direct {p2, p0}, Ld70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-boolean v2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->e:Z

    .line 45
    new-instance p1, Lg70;

    iget-object p2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lg70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    .line 46
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 47
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    new-instance p2, Lf70;

    invoke-direct {p2, p0}, Lf70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    invoke-static {p2}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 52
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x30

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    const/4 p2, -0x2

    .line 54
    invoke-virtual {p1, p3, p2}, Landroid/view/Window;->setLayout(II)V

    .line 55
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 56
    new-instance p1, Le70;

    invoke-direct {p1, p0, v0}, Le70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private closeDialog()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->f:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;
    .locals 7

    .line 1
    new-instance v6, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;-><init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V

    return-object v6
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->f:J

    .line 3
    invoke-static {v0, v1, p1}, LJ/N;->MTfcgGhg(JI)V

    return-void
.end method

.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a:Landroid/app/Activity;

    const v0, 0x7f13019d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->d:Lj70;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v2}, Lj70;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->c:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
