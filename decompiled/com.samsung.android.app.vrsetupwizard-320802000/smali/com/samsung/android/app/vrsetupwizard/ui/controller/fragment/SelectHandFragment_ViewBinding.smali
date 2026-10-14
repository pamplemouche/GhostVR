.class public Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;
.super Ljava/lang/Object;

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090096

    const-string v2, "field \'mLinearLayoutOOBE\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutOOBE:Landroid/widget/LinearLayout;

    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090097

    const-string v2, "field \'mLinearLayoutPairNewBottomMargin\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->mLinearLayoutPairNewBottomMargin:Landroid/widget/LinearLayout;

    const v0, 0x7f090034

    const-string v1, "method \'onClickLeftHanded\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;->c:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090036

    const-string v1, "method \'onClickRightHanded\'"

    invoke-static {p2, v0, v1}, Lbutterknife/a/c;->a(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/c;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
