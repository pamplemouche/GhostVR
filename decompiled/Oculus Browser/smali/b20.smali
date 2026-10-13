.class public final synthetic Lb20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb20;->w:Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lb20;->w:Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Lorg/chromium/chrome/browser/browserservices/ClearDataDialogActivity;->a(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
