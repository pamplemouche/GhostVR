.class public Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lq70;
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/ui/base/WindowAndroid;

.field public final b:Landroid/app/Activity;

.field public c:Lr70;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Ljava/lang/String;

.field public h:[Landroid/graphics/drawable/Drawable;

.field public i:J

.field public j:Z

.field public final k:Landroid/bluetooth/BluetoothAdapter;

.field public final l:Landroid/text/SpannableString;

.field public final m:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb70;

    invoke-direct {v0, p0}, Lb70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->m:Landroid/content/BroadcastReceiver;

    .line 3
    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a:Lorg/chromium/ui/base/WindowAndroid;

    .line 4
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    .line 5
    iput-object p2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->d:Ljava/lang/String;

    .line 6
    iput p3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->e:I

    .line 7
    iput-wide p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 8
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->k:Landroid/bluetooth/BluetoothAdapter;

    const p1, 0x7f080103

    .line 9
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const p2, 0x7f130195

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->g:Ljava/lang/String;

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const p2, 0x7f080215

    .line 11
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const p2, 0x7f080216

    .line 12
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p1, p4

    const p2, 0x7f080217

    .line 13
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p5, 0x2

    aput-object p2, p1, p5

    const/4 p2, 0x3

    const v0, 0x7f080218

    .line 14
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const v0, 0x7f080219

    .line 15
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, p2

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->h:[Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->k:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_0

    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "Bluetooth"

    const-string v0, "BluetoothChooserDialog: Default Bluetooth adapter not found."

    .line 17
    invoke-static {p2, v0, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const p2, 0x7f130193

    .line 19
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, p4, [LWe1;

    new-instance p4, LWe1;

    .line 20
    invoke-virtual {p0, p5}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object p5

    const-string v0, "<link>"

    const-string v1, "</link>"

    invoke-direct {p4, v0, v1, p5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object p4, p2, p3

    .line 21
    invoke-static {p1, p2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->l:Landroid/text/SpannableString;

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;
    .locals 19

    .line 1
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    invoke-virtual {v0}, LOT0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v2, p0

    .line 2
    invoke-virtual {v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object/from16 v2, p0

    .line 3
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;-><init>(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;IJ)V

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    .line 5
    new-instance v8, Landroid/text/SpannableString;

    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->d:Ljava/lang/String;

    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    check-cast v1, LOY;

    .line 7
    iget-object v1, v1, LOY;->J:LIl0;

    .line 8
    invoke-interface {v1}, LIl0;->b()Z

    move-result v1

    const/4 v10, 0x1

    xor-int/lit8 v6, v1, 0x1

    .line 9
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->e:I

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lwp0;->a(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V

    .line 10
    new-instance v12, Landroid/text/SpannableString;

    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f130196

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->d:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v3, v11

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v12}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 13
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    move-object v4, v8

    move v5, v9

    move-object v8, v12

    move v9, v1

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 14
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f13019b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 15
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f1301a2

    .line 16
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [LWe1;

    new-instance v3, LWe1;

    .line 17
    invoke-virtual {v0, v11}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v4

    const-string v5, "<link>"

    const-string v6, "</link>"

    invoke-direct {v3, v5, v6, v4}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    .line 18
    invoke-static {v1, v2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v15

    .line 19
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f130194

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 20
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f13019c

    .line 21
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LWe1;

    new-instance v3, LWe1;

    .line 22
    invoke-virtual {v0, v11}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v4

    const-string v5, "<link1>"

    const-string v6, "</link1>"

    invoke-direct {v3, v5, v6, v4}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v2, v11

    new-instance v3, LWe1;

    const/4 v4, 0x6

    .line 23
    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v4

    const-string v5, "<link2>"

    const-string v6, "</link2>"

    invoke-direct {v3, v5, v6, v4}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v2, v10

    .line 24
    invoke-static {v1, v2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v17

    .line 25
    new-instance v1, Lp70;

    move-object v11, v1

    move-object v13, v15

    move-object/from16 v16, v17

    invoke-direct/range {v11 .. v18}, Lp70;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 26
    new-instance v2, Lr70;

    iget-object v3, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1}, Lr70;-><init>(Landroid/app/Activity;Lq70;Lp70;)V

    iput-object v2, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 27
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    iget-object v2, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->m:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.location.MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    iput-boolean v10, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->j:Z

    return-object v0
.end method

.method private notifyAdapterTurnedOn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    invoke-virtual {v0}, Lr70;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)LVe1;
    .locals 3

    .line 40
    new-instance v0, LVe1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    .line 41
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, La70;

    invoke-direct {v2, p0, p1}, La70;-><init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;I)V

    invoke-direct {v0, v1, v2}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->j:Z

    .line 4
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 6
    invoke-static {v0, v1, p1, p2}, LJ/N;->MztfiUrN(JILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const-string v0, ""

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a([Ljava/lang/String;[I)V
    .locals 4

    .line 10
    iget-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_3

    .line 12
    aget-object v0, p1, p2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    invoke-virtual {p1}, Lr70;->a()V

    .line 15
    iget-wide p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 16
    invoke-static {p1, p2}, LJ/N;->MvKl$XvB(J)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 8

    .line 17
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v0

    invoke-virtual {v0}, LOT0;->b()Z

    move-result v0

    .line 18
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v1

    invoke-virtual {v1}, LOT0;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 19
    iget-object v3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a:Lorg/chromium/ui/base/WindowAndroid;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 20
    invoke-virtual {v3, v4}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, ""

    .line 21
    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(ILjava/lang/String;)V

    return v2

    .line 22
    :cond_0
    new-instance v3, LWe1;

    const/4 v4, 0x3

    .line 23
    invoke-virtual {p0, v4}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v4

    const-string v5, "<permission_link>"

    const-string v6, "</permission_link>"

    invoke-direct {v3, v5, v6, v4}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v4, LWe1;

    const/4 v5, 0x4

    .line 25
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v5

    const-string v6, "<services_link>"

    const-string v7, "</services_link>"

    invoke-direct {v4, v6, v7, v5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    return v5

    .line 26
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v1, 0x7f13019a

    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [LWe1;

    aput-object v4, v1, v2

    .line 28
    invoke-static {v0, v1}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v1, 0x7f130197

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [LWe1;

    aput-object v3, v1, v2

    .line 31
    invoke-static {v0, v1}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v1, 0x7f130198

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [LWe1;

    aput-object v3, v1, v2

    aput-object v4, v1, v5

    .line 34
    invoke-static {v0, v1}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    .line 35
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v3, 0x7f130199

    .line 36
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [LWe1;

    new-instance v4, LWe1;

    const/4 v5, 0x5

    .line 37
    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v5

    const-string v6, "<link>"

    const-string v7, "</link>"

    invoke-direct {v4, v6, v7, v5}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v4, v3, v2

    .line 38
    invoke-static {v1, v3}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v1

    .line 39
    iget-object v3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    invoke-virtual {v3, v0, v1}, Lr70;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return v2
.end method

.method public addOrUpdateDevice(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object p3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-object p3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-eq p4, p3, :cond_1

    .line 3
    iget-object p3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->h:[Landroid/graphics/drawable/Drawable;

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    iget-object p3, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f11001a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6
    invoke-virtual {p3, v1, p4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 7
    :goto_0
    iget-object p4, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 8
    iget-object v1, p4, Lr70;->f:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object v1, p4, Lr70;->k:Lj70;

    invoke-virtual {v1, p1, p2, v0, p3}, Lj70;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 10
    invoke-virtual {p4, p1}, Lr70;->a(I)V

    return-void
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v1, 0x7f0600ec

    .line 4
    invoke-static {v0, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p1
.end method

.method public closeDialog()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 3
    iget-object v0, v0, Lr70;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public notifyAdapterTurnedOff()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v1, 0x7f130192

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [LWe1;

    new-instance v3, LWe1;

    .line 3
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a(I)LVe1;

    move-result-object v1

    const-string v4, "<link>"

    const-string v5, "</link>"

    invoke-direct {v3, v4, v5, v1}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 4
    invoke-static {v0, v2}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    iget-object v2, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->l:Landroid/text/SpannableString;

    invoke-virtual {v1, v0, v2}, Lr70;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public notifyDiscoveryState(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 2
    iget-object v0, p1, Lr70;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Lr70;->a(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a()Z

    :goto_0
    return-void
.end method
