.class public LO30;
.super Ldh;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public P:Lorg/chromium/chrome/browser/contacts_picker/TopView;


# direct methods
.method public constructor <init>(LP30;Lorg/chromium/chrome/browser/contacts_picker/TopView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ldh;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, LO30;->P:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LO30;->P:Lorg/chromium/chrome/browser/contacts_picker/TopView;

    if-eqz p1, :cond_1

    const-string v0, "ContactsPickerSelectAll"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/contacts_picker/TopView;->y:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method
