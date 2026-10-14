.class Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/d;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a()V

    return-void
.end method
