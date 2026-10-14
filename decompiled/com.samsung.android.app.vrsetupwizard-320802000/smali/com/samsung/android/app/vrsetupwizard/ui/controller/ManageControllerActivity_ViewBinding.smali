.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;

    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900eb

    const-string v2, "field \'mSelectedControllerTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mSelectedControllerTextView:Landroid/widget/TextView;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09009c

    const-string v2, "field \'mLayoutVRControllerInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutVRControllerInfo:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090095

    const-string v2, "field \'mLayoutNoVRControllerFound\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;->mLayoutNoVRControllerFound:Landroid/widget/LinearLayout;

    const v0, 0x7f090030

    const-string v1, "method \'onClickSelectedController\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;->c:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/u;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/u;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'onClickPairNewController\'"

    const v1, 0x7f0900be

    invoke-static {p2, v1, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;->d:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/v;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900bf

    invoke-static {p2, v1, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;->e:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/w;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/w;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/ManageControllerActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
