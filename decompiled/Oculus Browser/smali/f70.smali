.class public final synthetic Lf70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf70;->w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lf70;->w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a(I)V

    return-void
.end method
