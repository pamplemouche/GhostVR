.class public Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005c

    const-string v2, "field \'mDescriptionTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDescriptionTextView:Landroid/widget/TextView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090092

    const-string v2, "field \'mLayoutDescriptionLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutDescriptionLayout:Landroid/widget/LinearLayout;

    const-class v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    const v1, 0x7f09005b

    const-string v2, "field \'mDisplayAppListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDisplayAppListView:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/ExpandableHeightListView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090091

    const-string v2, "field \'mContentLinearLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mContentLinearLayout:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09008f

    const-string v2, "field \'mLayoutInstallButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutInstallButton:Landroid/widget/LinearLayout;

    const v0, 0x7f090032

    const-string v1, "field \'mButtonInstall\' and method \'onClickInstall\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mButtonInstall\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonInstall:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09013f

    const-string v2, "field \'mTextViewTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewTitle:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09013a

    const-string v2, "field \'mTextViewCurrentStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewCurrentStatus:Landroid/widget/TextView;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090139

    const-string v2, "field \'mTextViewDownloadInstallStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewDownloadInstallStatus:Landroid/widget/TextView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09005d

    const-string v2, "field \'mLayoutAppList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutAppList:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f0900db

    const-string v2, "field \'mScrollViewLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mScrollViewLayout:Landroid/widget/ScrollView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090098

    const-string v2, "field \'mLayoutProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mLayoutProgress:Landroid/widget/LinearLayout;

    const v0, 0x7f09008e

    const-string v1, "field \'mButtonCancel\' and method \'onClickCancel\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mButtonCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/a/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mButtonCancel:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/n;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/n;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b0

    const-string v2, "field \'mTextViewCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mTextViewCancel:Landroid/widget/TextView;

    const-class v0, Landroid/support/v7/widget/SeslProgressBar;

    const v1, 0x7f0900d0

    const-string v2, "field \'mProgressBarInstall\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslProgressBar;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mProgressBarInstall:Landroid/support/v7/widget/SeslProgressBar;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09005e

    const-string v2, "field \'mDownloadProgressIndicator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/DownloadInstallActivity;->mDownloadProgressIndicator:Landroid/widget/TextView;

    return-void
.end method
