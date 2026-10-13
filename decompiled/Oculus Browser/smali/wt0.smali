.class public Lwt0;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwt0;->w:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lwt0;->w:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    .line 2
    iget-wide v0, p1, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->H:J

    .line 3
    invoke-static {v0, v1, p1}, LJ/N;->MOFoPxaU(JLjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lwt0;->w:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->I:LP8;

    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
