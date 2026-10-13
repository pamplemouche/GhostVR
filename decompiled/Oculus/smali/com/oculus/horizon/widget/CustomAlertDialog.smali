.class public Lcom/oculus/horizon/widget/CustomAlertDialog;
.super Landroid/app/Dialog;
.source "CustomAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;,
        Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;,
        Lcom/oculus/horizon/widget/CustomAlertDialog$Params;
    }
.end annotation


# instance fields
.field private mButtons:Landroid/view/View;

.field private mCancelable:Z

.field private mIsLoading:Z

.field private mListView:Landroid/widget/ListView;

.field private final mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/oculus/horizon/widget/CustomAlertDialog$Params;)V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mCancelable:Z

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mIsLoading:Z

    .line 230
    iput-object p3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/oculus/horizon/widget/CustomAlertDialog$Params;Lcom/oculus/horizon/widget/CustomAlertDialog$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/widget/CustomAlertDialog;-><init>(Landroid/content/Context;ILcom/oculus/horizon/widget/CustomAlertDialog$Params;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/CustomAlertDialog;)Lcom/oculus/horizon/widget/CustomAlertDialog$Params;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    return-object v0
.end method

.method private setupButton(IILjava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    if-eqz p3, :cond_0

    .line 311
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$2;

    invoke-direct {v1, p0, p4, p2}, Lcom/oculus/horizon/widget/CustomAlertDialog$2;-><init>(Lcom/oculus/horizon/widget/CustomAlertDialog;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTextView(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    if-eqz p2, :cond_0

    .line 300
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v2, 0x102000b

    const/16 v7, 0x8

    .line 235
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const v0, 0x1020016

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setupTextView(ILjava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v0, v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->message:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setupTextView(ILjava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v0, v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->adapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v0, v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 241
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 243
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$layout;->custom_alert_dialog_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 247
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v2, v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->adapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v2, v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->adapter:Landroid/widget/ListAdapter;

    .line 254
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v2, v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->onClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    if-eqz v2, :cond_1

    .line 257
    new-instance v2, Lcom/oculus/horizon/widget/CustomAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/widget/CustomAlertDialog$1;-><init>(Lcom/oculus/horizon/widget/CustomAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 270
    iput-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mListView:Landroid/widget/ListView;

    .line 273
    :cond_2
    const v0, 0x102002b

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 274
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->view:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    :goto_1
    sget v0, Lcom/oculus/horizon/R$id;->buttonPanel:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->positiveText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v1, v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->negativeText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    .line 282
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :goto_2
    return-void

    .line 250
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 252
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$layout;->custom_alert_dialog_item:I

    const v5, 0x1020014

    iget-object v6, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v6, v6, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->items:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 284
    :cond_5
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 285
    sget v0, Lcom/oculus/horizon/R$id;->buttons:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mButtons:Landroid/view/View;

    .line 287
    const v0, 0x1020019

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v2, v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->positiveText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v3, v3, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->positiveListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setupButton(IILjava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    .line 290
    const v0, 0x102001a

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    iget-object v2, v2, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->negativeText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mParams:Lcom/oculus/horizon/widget/CustomAlertDialog$Params;

    .line 291
    invoke-static {v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Params;->access$300(Lcom/oculus/horizon/widget/CustomAlertDialog$Params;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    move-result-object v3

    .line 290
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setupButton(IILjava/lang/CharSequence;Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)V

    .line 293
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mIsLoading:Z

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setLoading(Z)V

    goto :goto_2
.end method

.method public setCancelable(Z)V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 350
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mCancelable:Z

    .line 351
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 356
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mCancelable:Z

    .line 357
    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 339
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mIsLoading:Z

    .line 340
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mCancelable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setCancelable(Z)V

    .line 341
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mButtons:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 342
    iget-object v3, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mButtons:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/oculus/horizon/widget/CustomAlertDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 345
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 340
    goto :goto_0

    :cond_2
    move v0, v1

    .line 342
    goto :goto_1

    :cond_3
    move v1, v2

    .line 343
    goto :goto_2
.end method
