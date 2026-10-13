.class public final synthetic Lv80;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv80;->a:Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lv80;->a:Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget v2, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->B:I

    if-ne v2, v3, :cond_1

    .line 2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN70;

    .line 3
    iget v2, p1, LN70;->e:I

    if-nez v2, :cond_f

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    iget-object p1, p1, LN70;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2, p1}, LJ/N;->M_a1HEOR(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->w:J

    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->C:Ljava/lang/String;

    .line 7
    invoke-static {v1, v2, v0, p1}, LJ/N;->M20MP4SB(JLjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 8
    :cond_0
    throw v1

    .line 9
    :cond_1
    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->x:Lle1;

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 10
    :cond_2
    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0e0097

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    iput-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    .line 11
    iget v2, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->B:I

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->C:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    iput v2, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->B:I

    .line 13
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 14
    invoke-static {v6}, LJ/N;->MM60DRK2(Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 15
    :goto_0
    iget-object v7, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->A:Landroid/widget/CheckBox;

    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    iget-object v6, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->A:Landroid/widget/CheckBox;

    invoke-virtual {v6, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    iget-object v6, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->y:Lorg/chromium/chrome/browser/ui/widget/text/AlertDialogEditText;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v5, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    if-ne v2, v3, :cond_4

    const/16 v6, 0x8

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f1302b2

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v2, v9, :cond_8

    if-eq v2, v8, :cond_7

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    const v5, 0x7f1302b4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 20
    :cond_6
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    const v5, 0x7f1302b3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 21
    :cond_7
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 22
    :cond_8
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 23
    :goto_2
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;->w:LAz0;

    invoke-virtual {p1}, LAz0;->a()V

    .line 24
    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 25
    new-instance v2, LXd1;

    sget-object v5, LEd1;->q:[LUd1;

    invoke-direct {v2, v5}, LXd1;-><init>([LUd1;)V

    sget-object v5, LEd1;->a:Lfe1;

    .line 26
    invoke-virtual {v2, v5, v0}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v5, LEd1;->c:Lke1;

    iget-wide v10, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->A:J

    iget v12, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->B:I

    if-eq v12, v3, :cond_d

    if-eq v12, v9, :cond_c

    if-eq v12, v8, :cond_b

    if-eq v12, v7, :cond_a

    if-eq v12, v6, :cond_9

    goto :goto_3

    .line 27
    :cond_9
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    const v3, 0x7f1302ba

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 28
    :cond_a
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    const v3, 0x7f1302b1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 29
    :cond_b
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    const v3, 0x7f1302b6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 30
    :cond_c
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    const v3, 0x7f1302b8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 31
    :cond_d
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    const v3, 0x7f1302b0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    cmp-long v3, v10, v6

    if-lez v3, :cond_e

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->D:Landroid/content/Context;

    invoke-static {v1, v10, v11}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    :cond_e
    :goto_3
    invoke-virtual {v2, v5, v1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->f:Lke1;

    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->y:Lorg/chromium/chrome/browser/download/DownloadLocationCustomView;

    .line 37
    invoke-virtual {v2, v1, v3}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->g:Lke1;

    const v3, 0x7f1302ef

    .line 38
    invoke-virtual {v2, v1, p1, v3}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->j:Lke1;

    const v3, 0x7f1301d4

    .line 39
    invoke-virtual {v2, v1, p1, v3}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 40
    invoke-virtual {v2}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->x:Lle1;

    .line 41
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadLocationDialogBridge;->z:LBd1;

    .line 42
    invoke-virtual {v0, p1, v4, v4}, LBd1;->a(Lle1;IZ)V

    :cond_f
    :goto_4
    return-void

    .line 43
    :cond_10
    throw v1

    .line 44
    :cond_11
    throw v1
.end method
