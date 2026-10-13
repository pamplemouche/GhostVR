.class public final synthetic La70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

.field public final b:I


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    iput p2, p0, La70;->b:I

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, La70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    iget v1, p0, La70;->b:I

    check-cast p1, Landroid/view/View;

    .line 1
    iget-wide v2, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    invoke-virtual {v1}, Lr70;->a()V

    .line 3
    iget-wide v0, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 4
    invoke-static {v0, v1}, LJ/N;->MvKl$XvB(J)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {v2, v3}, LJ/N;->MkOkhfCA(J)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 7
    iput-boolean v4, v1, Lr70;->l:Z

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    .line 9
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object v1

    invoke-virtual {v1}, LOT0;->a()Landroid/content/Intent;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    .line 12
    iput-boolean v4, v1, Lr70;->l:Z

    .line 13
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a:Lorg/chromium/ui/base/WindowAndroid;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-static {v2, v3}, LJ/N;->MZvQXN$v(J)V

    goto :goto_0

    .line 15
    :pswitch_5
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->k:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lr70;->a(I)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->b:Landroid/app/Activity;

    const v2, 0x7f1301a3

    .line 19
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    iget-object v0, v0, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->l:Landroid/text/SpannableString;

    invoke-virtual {v2, v1, v0}, Lr70;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-static {v2, v3}, LJ/N;->M$uhYebq(J)V

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
