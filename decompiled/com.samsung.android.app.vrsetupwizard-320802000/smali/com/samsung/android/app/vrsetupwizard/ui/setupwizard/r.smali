.class final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/r;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "compoundButton"

    invoke-static {p1, v0}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/r;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->c(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    return-void
.end method
