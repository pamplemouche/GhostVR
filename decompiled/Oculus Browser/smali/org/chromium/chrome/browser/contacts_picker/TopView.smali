.class public Lorg/chromium/chrome/browser/contacts_picker/TopView;
.super Landroid/widget/RelativeLayout;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:LU30;

.field public B:Lorg/chromium/ui/widget/ChipView;

.field public C:Lorg/chromium/ui/widget/ChipView;

.field public D:Lorg/chromium/ui/widget/ChipView;

.field public E:LT30;

.field public F:Z

.field public final w:Landroid/content/Context;

.field public x:Landroid/view/View;

.field public y:Landroid/widget/CheckBox;

.field public z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/contacts_picker/TopView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->w:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->D:Lorg/chromium/ui/widget/ChipView;

    goto :goto_0

    .line 2
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->C:Lorg/chromium/ui/widget/ChipView;

    goto :goto_0

    .line 3
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->B:Lorg/chromium/ui/widget/ChipView;

    .line 4
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 5
    iget-object v2, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->E:LT30;

    check-cast v2, LP30;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-boolean p1, LP30;->I:Z

    xor-int/2addr p1, v1

    sput-boolean p1, LP30;->I:Z

    goto :goto_1

    .line 7
    :cond_4
    sget-boolean p1, LP30;->H:Z

    xor-int/2addr p1, v1

    sput-boolean p1, LP30;->H:Z

    goto :goto_1

    .line 8
    :cond_5
    sget-boolean p1, LP30;->G:Z

    xor-int/2addr p1, v1

    sput-boolean p1, LP30;->G:Z

    .line 9
    :goto_1
    iget-object p1, v2, LBg;->w:LCg;

    invoke-virtual {p1}, LCg;->b()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->F:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->A:LU30;

    iget-object p2, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->y:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    check-cast p1, LS30;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, LS30;->H:LrR0;

    .line 3
    iget-object v2, p2, LrR0;->c:Ljava/util/Set;

    .line 4
    iput-object v2, p1, LS30;->K:Ljava/util/Set;

    .line 5
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, LS30;->E:LP30;

    .line 6
    iget-object v3, v3, LP30;->C:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    iput-object v2, p2, LrR0;->c:Ljava/util/Set;

    .line 9
    invoke-virtual {p2}, LrR0;->d()V

    .line 10
    iget-object p1, p1, LS30;->A:Lbc1;

    const/4 p2, 0x2

    invoke-interface {p1, p2, v0, v1, v1}, Lbc1;->a(ILjava/util/List;II)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p1, LS30;->H:LrR0;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 12
    iput-object v2, p2, LrR0;->c:Ljava/util/Set;

    .line 13
    invoke-virtual {p2}, LrR0;->d()V

    .line 14
    iput-object v0, p1, LS30;->K:Ljava/util/Set;

    .line 15
    iget-object p1, p1, LS30;->A:Lbc1;

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1, v1}, Lbc1;->a(ILjava/util/List;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b02bc

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contacts_picker/TopView;->a(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0184

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contacts_picker/TopView;->a(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0476

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/contacts_picker/TopView;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b00e9

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->x:Landroid/view/View;

    const-string v0, "ContactsPickerSelectAll"

    .line 3
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0b00ba

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->y:Landroid/widget/CheckBox;

    const v0, 0x7f0b00bc

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->z:Landroid/widget/TextView;

    const v0, 0x7f0b00bd

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f13022d

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b02bc

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ChipView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->B:Lorg/chromium/ui/widget/ChipView;

    .line 10
    iget-object v0, v0, Lorg/chromium/ui/widget/ChipView;->x:Landroid/widget/TextView;

    const v1, 0x7f13060f

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->B:Lorg/chromium/ui/widget/ChipView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->B:Lorg/chromium/ui/widget/ChipView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0184

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ChipView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->C:Lorg/chromium/ui/widget/ChipView;

    .line 15
    iget-object v0, v0, Lorg/chromium/ui/widget/ChipView;->x:Landroid/widget/TextView;

    const v2, 0x7f13060e

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->C:Lorg/chromium/ui/widget/ChipView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->C:Lorg/chromium/ui/widget/ChipView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0476

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/ChipView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->D:Lorg/chromium/ui/widget/ChipView;

    .line 20
    iget-object v0, v0, Lorg/chromium/ui/widget/ChipView;->x:Landroid/widget/TextView;

    const v2, 0x7f130610

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->D:Lorg/chromium/ui/widget/ChipView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/TopView;->D:Lorg/chromium/ui/widget/ChipView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
