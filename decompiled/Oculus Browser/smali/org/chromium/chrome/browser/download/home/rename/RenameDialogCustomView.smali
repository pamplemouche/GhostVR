.class public Lorg/chromium/chrome/browser/download/home/rename/RenameDialogCustomView;
.super Landroid/widget/ScrollView;
.source "PG"


# instance fields
.field public w:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

.field public x:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    const v0, 0x7f0b019e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b01c3

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/home/rename/RenameDialogCustomView;->w:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    .line 4
    new-instance v1, LX90;

    invoke-direct {v1, p0}, LX90;-><init>(Lorg/chromium/chrome/browser/download/home/rename/RenameDialogCustomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
