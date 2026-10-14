.class Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;
.super Lbutterknife/a/a;


# instance fields
.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;->c:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment_ViewBinding;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-direct {p0}, Lbutterknife/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/b;->b:Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/controller/fragment/SelectHandFragment;->onClickLeftHanded()V

    return-void
.end method
