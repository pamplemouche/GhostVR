.class public final synthetic Lc70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc70;->w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc70;->w:Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->a(I)V

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/device_dialog/BluetoothScanningPermissionDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
