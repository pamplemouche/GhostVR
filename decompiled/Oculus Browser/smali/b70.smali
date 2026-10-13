.class public Lb70;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lb70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lb70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    iget-object p1, p1, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->c:Lr70;

    invoke-virtual {p1}, Lr70;->a()V

    .line 5
    iget-object p1, p0, Lb70;->a:Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;

    iget-wide p1, p1, Lorg/chromium/chrome/browser/device_dialog/BluetoothChooserDialog;->i:J

    .line 6
    invoke-static {p1, p2}, LJ/N;->MvKl$XvB(J)V

    :cond_1
    return-void
.end method
