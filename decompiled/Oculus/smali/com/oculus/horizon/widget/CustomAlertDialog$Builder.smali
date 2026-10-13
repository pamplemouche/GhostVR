.class public Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
.super Ljava/lang/Object;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/CustomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCancelable:Z

.field private final mContext:Landroid/content/Context;

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessage:Ljava/lang/CharSequence;

.field private mNegativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field private mNegativeText:Ljava/lang/CharSequence;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field private mPositiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

.field private mPositiveText:Ljava/lang/CharSequence;

.field private final mThemeResId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mCancelable:Z

    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 99
    iput p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mThemeResId:I

    .line 100
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/widget/CustomAlertDialog;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 180
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    iget-object v7, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    iget-object v9, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeText:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    invoke-direct/range {v0 .. v11}, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;-><init>(Ljava/lang/CharSequence;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/ListAdapter;[Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;Lcom/oculus/horizon/widget/CustomAlertDialog$1;)V

    .line 192
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog;

    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mThemeResId:I

    invoke-direct {v1, v2, v3, v0, v11}, Lcom/oculus/horizon/widget/CustomAlertDialog;-><init>(Landroid/content/Context;ILcom/oculus/horizon/widget/CustomAlertDialog$Params;Lcom/oculus/horizon/widget/CustomAlertDialog$1;)V

    .line 193
    sget v0, Lcom/oculus/horizon/R$layout;->custom_alert_dialog:I

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setContentView(I)V

    .line 194
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mCancelable:Z

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setCancelable(Z)V

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    return-object v1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mAdapter:Landroid/widget/ListAdapter;

    .line 129
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 130
    return-object p0
.end method

.method public setCancelable(Z)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mCancelable:Z

    .line 171
    return-object p0
.end method

.method public setItems(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mItems:[Ljava/lang/CharSequence;

    .line 135
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 136
    return-object p0
.end method

.method public setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 119
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mMessage:Ljava/lang/CharSequence;

    .line 124
    return-object p0
.end method

.method public setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeText:Ljava/lang/CharSequence;

    .line 159
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 160
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeText:Ljava/lang/CharSequence;

    .line 165
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mNegativeListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 166
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 176
    return-object p0
.end method

.method public setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveText:Ljava/lang/CharSequence;

    .line 147
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 148
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveText:Ljava/lang/CharSequence;

    .line 153
    iput-object p2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mPositiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 154
    return-object p0
.end method

.method public setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 104
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 109
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->mView:Landroid/view/View;

    .line 114
    return-object p0
.end method
