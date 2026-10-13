.class public LrH0;
.super LSG0;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final INVALID_ENTRY_INDEX:I = -0x1

.field public static final INVALID_TIME:J = -0x1L

.field public static final NAVIGATION_TYPE_FROM_INTENT:I = 0x1

.field public static final NAVIGATION_TYPE_FROM_LINK_WITHOUT_USER_GESTURE:I = 0x3

.field public static final NAVIGATION_TYPE_FROM_RELOAD:I = 0x4

.field public static final NAVIGATION_TYPE_FROM_USER_TYPING:I = 0x2

.field public static final NAVIGATION_TYPE_NONE:I = 0x0

.field public static final NAVIGATION_TYPE_OTHER:I = 0x5

.field public static final USER_DATA_KEY:Ljava/lang/Class;


# instance fields
.field public final mCachedResolvers:Ljava/util/HashSet;

.field public mInitialIntent:Landroid/content/Intent;

.field public mInitialNavigationType:I

.field public mIsCustomTabIntent:Z

.field public mIsInitialIntentHeadingToChrome:Z

.field public mIsOnEffectiveRedirectChain:Z

.field public mLastCommittedEntryIndexBeforeStartingNavigation:I

.field public mLastNewUrlLoadingTime:J

.field public mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LrH0;

    sput-object v0, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, LrH0;->mLastNewUrlLoadingTime:J

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, LXT;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 14
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LrH0;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 2
    sget-object v1, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LrH0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LrH0;

    invoke-direct {v1}, LrH0;-><init>()V

    .line 4
    sget-object v2, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    .line 5
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p0, v1}, LWT;->a(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;LrH0;)LrH0;
    .locals 2

    .line 6
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 7
    sget-object v0, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {p0, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v0

    check-cast v0, LrH0;

    if-eqz p1, :cond_0

    .line 8
    sget-object v1, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    invoke-virtual {p0, v1, p1}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, LrH0;->USER_DATA_KEY:Ljava/lang/Class;

    .line 10
    iget-object p0, p0, LyU;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LxU;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b(Z)Z
    .locals 3

    .line 1
    iget v0, p0, LrH0;->mInitialNavigationType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LrH0;->mIsInitialIntentHeadingToChrome:Z

    .line 2
    iput-boolean v0, p0, LrH0;->mIsCustomTabIntent:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    .line 4
    iget-object v1, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 5
    iput v0, p0, LrH0;->mInitialNavigationType:I

    .line 6
    iput-boolean v0, p0, LrH0;->mIsOnEffectiveRedirectChain:Z

    .line 7
    iput v0, p0, LrH0;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    .line 8
    iput-boolean v0, p0, LrH0;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getInitialIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLastCommittedEntryIndexBeforeStartingNavigation()I
    .locals 1

    .line 1
    iget v0, p0, LrH0;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    return v0
.end method

.method public hasNewResolver(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 2
    :cond_2
    invoke-static {p1}, LrH0;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    iget-object v3, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    invoke-static {v3}, LrH0;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 6
    iget-object v3, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_5
    return v2
.end method

.method public isFromCustomTabIntent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LrH0;->mIsCustomTabIntent:Z

    return v0
.end method

.method public isNavigationFromUserTyping()Z
    .locals 2

    .line 1
    iget v0, p0, LrH0;->mInitialNavigationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnEffectiveIntentRedirectChain()Z
    .locals 2

    .line 1
    iget v0, p0, LrH0;->mInitialNavigationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, LrH0;->mIsOnEffectiveRedirectChain:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOnNavigation()Z
    .locals 1

    .line 1
    iget v0, p0, LrH0;->mInitialNavigationType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LrH0;->clear()V

    return-void
.end method

.method public setShouldNotOverrideUrlLoadingUntilNewUrlLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LrH0;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    return-void
.end method

.method public shouldNavigationTypeStayInChrome()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LrH0;->b(Z)Z

    move-result v0

    return v0
.end method

.method public shouldNotOverrideUrlLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LrH0;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    return v0
.end method

.method public shouldStayInChrome(ZZ)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LrH0;->mIsInitialIntentHeadingToChrome:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, LrH0;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LrH0;->clear()V

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {p1}, LtZ;->a(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, LrH0;->mIsCustomTabIntent:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER"

    .line 4
    invoke-static {p1, v0, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CCTExternalLinkHandling"

    .line 5
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 6
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.browser.application_id"

    .line 9
    invoke-static {p1, v3}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 10
    :cond_4
    iput-boolean v1, p0, LrH0;->mIsInitialIntentHeadingToChrome:Z

    .line 11
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    .line 12
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    :goto_2
    return-void
.end method

.method public updateNewUrlLoading(IZZJI)V
    .locals 9

    .line 1
    iget-wide v0, p0, LrH0;->mLastNewUrlLoadingTime:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, LrH0;->mLastNewUrlLoadingTime:J

    and-int/lit16 v2, p1, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/high16 v5, 0x8000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x1000000

    if-nez p2, :cond_4

    and-int p2, p1, v6

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const/4 p2, 0x7

    if-eq v2, p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v7, -0x1

    cmp-long p2, v0, v7

    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    cmp-long p2, p4, v0

    if-lez p2, :cond_4

    :cond_3
    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_a

    if-eqz v5, :cond_5

    .line 3
    iget-object p2, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    if-eqz p2, :cond_5

    .line 4
    iput v3, p0, LrH0;->mInitialNavigationType:I

    goto :goto_4

    .line 5
    :cond_5
    iput-boolean v4, p0, LrH0;->mIsInitialIntentHeadingToChrome:Z

    .line 6
    iput-boolean v4, p0, LrH0;->mIsCustomTabIntent:Z

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, LrH0;->mInitialIntent:Landroid/content/Intent;

    .line 8
    iget-object p2, p0, LrH0;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    if-ne v2, v3, :cond_6

    const/4 p1, 0x2

    .line 9
    iput p1, p0, LrH0;->mInitialNavigationType:I

    goto :goto_4

    :cond_6
    const/16 p2, 0x8

    if-eq v2, p2, :cond_9

    and-int/2addr p1, v6

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    if-nez v2, :cond_8

    if-nez p3, :cond_8

    const/4 p1, 0x3

    .line 10
    iput p1, p0, LrH0;->mInitialNavigationType:I

    goto :goto_4

    :cond_8
    const/4 p1, 0x5

    .line 11
    iput p1, p0, LrH0;->mInitialNavigationType:I

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, LrH0;->mInitialNavigationType:I

    .line 13
    :goto_4
    iput-boolean v4, p0, LrH0;->mIsOnEffectiveRedirectChain:Z

    .line 14
    iput p6, p0, LrH0;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    .line 15
    iput-boolean v4, p0, LrH0;->mShouldNotOverrideUrlLoadingUntilNewUrlLoading:Z

    goto :goto_5

    .line 16
    :cond_a
    iget p1, p0, LrH0;->mInitialNavigationType:I

    if-eqz p1, :cond_b

    .line 17
    iput-boolean v3, p0, LrH0;->mIsOnEffectiveRedirectChain:Z

    :cond_b
    :goto_5
    return-void
.end method
