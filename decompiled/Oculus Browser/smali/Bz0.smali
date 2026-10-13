.class public LBz0;
.super LAz0;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzz0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LAz0;-><init>(Landroid/content/Context;Lzz0;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0e0099

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0b0371

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 6
    iget v0, p0, LAz0;->w:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, LAz0;->getCount()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v2, :cond_2

    invoke-virtual {p3, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, LAz0;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    invoke-virtual {p0, p1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN70;

    if-nez v0, :cond_3

    return-object p2

    :cond_3
    const v2, 0x7f0b0494

    .line 13
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    iget-object v4, v0, LN70;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b0151

    .line 15
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 16
    invoke-virtual {p0, p1}, LAz0;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-wide v1, v0, LN70;->c:J

    .line 18
    sget-object v3, Lorg/chromium/chrome/browser/download/DownloadUtils;->a:[I

    invoke-static {p1, v3, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;[IJ)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v0, v0, LN70;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p3, v1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {p3, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    iget-object p1, p0, LAz0;->C:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f1302b8

    invoke-virtual {p1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 30
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, LAz0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN70;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    iget-object v2, v0, LN70;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4
    invoke-static {v1, v2}, LJ/N;->M_a1HEOR(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput p1, p0, LAz0;->w:I

    .line 6
    iget-object p1, p0, LAz0;->z:Lzz0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lzz0;->c()V

    .line 7
    :cond_1
    iget p1, v0, LN70;->e:I

    const/4 v0, 0x3

    const-string v1, "MobileDownload.Location.Setting.DirectoryType"

    invoke-static {v1, p1, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 9
    throw p1
.end method
