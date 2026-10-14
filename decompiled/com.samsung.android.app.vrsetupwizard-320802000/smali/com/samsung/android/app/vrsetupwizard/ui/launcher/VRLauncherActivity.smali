.class public Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;
.super Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;


# instance fields
.field mGalaxyAppsBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mLayoutCircleIndicator:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

.field private p:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

.field private q:Landroid/content/Context;

.field private r:I

.field private s:Landroid/database/DataSetObserver;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->r:I

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->s:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/d;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->r:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v2, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10800000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/16 v2, 0x10

    const/16 v3, 0x12c

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const v4, 0x7f0f0081

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "Remove old VR Launcher"

    :goto_0
    invoke-virtual {v1, p1, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->r:I

    return p0
.end method

.method private l()V
    .locals 3

    const-string v0, "[VRLauncherActivity]initToolbar()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->g()Landroid/support/v7/app/a;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(I)V

    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "[VRLauncherActivity]initializeAdapter()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/a/a;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/a/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/a/a;->a(Lcom/samsung/android/app/vrsetupwizard/system/a/b;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/a/a;->start()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->s:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private n()V
    .locals 4

    const-string v0, "[VRLauncherActivity]initializeDraggableGridView()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setAdapter(Landroid/widget/Adapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/j;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/k;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/k;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/l;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/l;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/m;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setOnRearrangeListener(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/l;)V

    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->p:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->p:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->p:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->getPageSize()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->a(Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/DraggableGridViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->p:Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/CircleIndicator;->getDataSetDraggableGridViewPagerObserver()Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->a()I

    move-result v1

    const-string v2, "vr_not_disturb_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/app/vrsetupwizard/common/a/k;->b(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VRLauncherActivity]No alert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f090017

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f0801d7

    goto :goto_0

    :cond_0
    const v0, 0x7f0801d6

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public onClickGalaxyApps()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
    .end annotation

    const-string v0, "523"

    const-string v1, "0002"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://CategoryList/0000005170"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0069

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    iput-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->l()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->m()V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n()V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mGalaxyAppsBtn:Landroid/widget/Button;

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mGalaxyAppsBtn:Landroid/widget/Button;

    const v1, 0x7f0f006a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mLayoutCircleIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const v2, 0x7f070020

    invoke-static {v1, v2}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->d(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mLayoutCircleIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->mLayoutCircleIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.vr.launcher"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "$TAG old VR Launcher installed, remove"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/b;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/b;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    const-string v4, ""

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/b;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const-string v1, "com.oculus.gearchina"

    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12c

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->a(Ljava/lang/String;I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f00d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0033

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/e;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/e;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/f;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/f;-><init>(Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "[VRLauncherActivity]onDestroy()"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->t:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->s:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->n:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "[VRLauncherActivity]onKeyDown!!"

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090017

    const-string v2, "523"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09014d

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "0001"

    invoke-static {v2, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/SettingsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->a()I

    move-result v0

    const/4 v1, 0x0

    const-string v4, "vr_not_disturb_mode"

    invoke-static {p1, v4, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/common/a/k;->b(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "vr_launcher_no_alert_help"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    const-class v6, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/NoAlertHelpActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    const-string v0, "0003"

    if-ne p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->a()I

    move-result v5

    invoke-static {p1, v4, v1, v5}, Lcom/samsung/android/app/vrsetupwizard/common/a/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "Off"

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/app/vrsetupwizard/common/a/a;->a()I

    move-result v1

    invoke-static {p1, v4, v3, v1}, Lcom/samsung/android/app/vrsetupwizard/common/a/k;->a(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "On"

    :goto_0
    invoke-static {v2, v0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o()V

    :catch_0
    :goto_1
    return v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->r(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/ui/launcher/VRLauncherActivity;->o()V

    const-string v0, "523"

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/v;->onResume()V

    return-void
.end method
