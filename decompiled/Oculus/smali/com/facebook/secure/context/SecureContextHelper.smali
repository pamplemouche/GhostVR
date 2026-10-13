.class public Lcom/facebook/secure/context/SecureContextHelper;
.super Ljava/lang/Object;
.source "SecureContextHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InstanceMethodCanBeStatic"
    }
.end annotation


# static fields
.field private static final sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

.field private static final sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

.field private static sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mAccessibleByAnyAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAccessibleByAnyAppIntentScope:Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mAnyIntentScope:Lcom/facebook/secure/intent/AnyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExternalIntentScope:Lcom/facebook/secure/intent/ExternalIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFamilyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFamilyIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFamilyIntentScope:Lcom/facebook/secure/intent/FamilyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFamilyIntentScopeShowChooser:Lcom/facebook/secure/intent/FamilyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInternalIntentScope:Lcom/facebook/secure/intent/InternalIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSameKeyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSameKeyIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSameKeyIntentScope:Lcom/facebook/secure/intent/SameKeyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSameKeyIntentScopeShowChooser:Lcom/facebook/secure/intent/SameKeyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mThirdPartyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mThirdPartyIntentScope:Lcom/facebook/secure/intent/ThirdPartyIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTrustedAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTrustedAppIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTrustedAppIntentScope:Lcom/facebook/secure/intent/TrustedAppIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTrustedAppIntentScopeShowChooser:Lcom/facebook/secure/intent/TrustedAppIntentScope;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0}, Lcom/facebook/secure/context/DelegatingReporter;-><init>()V

    sput-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    .line 76
    new-instance v0, Lcom/facebook/secure/intent/LaunchEnforcement;

    invoke-direct {v0}, Lcom/facebook/secure/intent/LaunchEnforcement;-><init>()V

    sput-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentScope:Lcom/facebook/secure/intent/InternalIntentScope;

    .line 82
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mSameKeyIntentScope:Lcom/facebook/secure/intent/SameKeyIntentScope;

    .line 83
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mSameKeyIntentScopeShowChooser:Lcom/facebook/secure/intent/SameKeyIntentScope;

    .line 84
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentScope:Lcom/facebook/secure/intent/FamilyIntentScope;

    .line 85
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentScopeShowChooser:Lcom/facebook/secure/intent/FamilyIntentScope;

    .line 86
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mTrustedAppIntentScope:Lcom/facebook/secure/intent/TrustedAppIntentScope;

    .line 87
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mTrustedAppIntentScopeShowChooser:Lcom/facebook/secure/intent/TrustedAppIntentScope;

    .line 88
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentScope:Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;

    .line 89
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentScope:Lcom/facebook/secure/intent/ExternalIntentScope;

    .line 90
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentScope:Lcom/facebook/secure/intent/ThirdPartyIntentScope;

    .line 91
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAnyIntentScope:Lcom/facebook/secure/intent/AnyIntentScope;

    .line 93
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 94
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mSameKeyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 95
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mSameKeyIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 96
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 97
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 98
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mTrustedAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 99
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mTrustedAppIntentLauncherShowChooser:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 100
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 101
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 102
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 103
    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAnyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 130
    return-void
.end method

.method public static declared-synchronized get()Lcom/facebook/secure/context/SecureContextHelper;
    .locals 3

    .prologue
    .line 133
    const-class v0, Lcom/facebook/secure/context/SecureContextHelper;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lcom/facebook/secure/context/SecureContextHelper;->get(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/context/SecureContextHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized get(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/context/SecureContextHelper;
    .locals 2
    .param p0    # Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    const-class v1, Lcom/facebook/secure/context/SecureContextHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/facebook/secure/context/SecureContextHelper;

    invoke-direct {v0}, Lcom/facebook/secure/context/SecureContextHelper;-><init>()V

    sput-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;

    .line 141
    :cond_0
    if-eqz p0, :cond_1

    .line 142
    invoke-static {p0}, Lcom/facebook/secure/context/SecureContextHelper;->setEnforceMode(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;)V

    .line 144
    :cond_1
    if-eqz p1, :cond_2

    .line 145
    invoke-static {p1}, Lcom/facebook/secure/context/SecureContextHelper;->setReporter(Lcom/facebook/secure/logger/Reporter;)V

    .line 147
    :cond_2
    sget-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sSecureContextHelper:Lcom/facebook/secure/context/SecureContextHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getAccessibleByAnyAppIntentScope()Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;
    .locals 3

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentScope:Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentScope:Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentScope:Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAnyIntentScope()Lcom/facebook/secure/intent/AnyIntentScope;
    .locals 3

    .prologue
    .line 625
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAnyIntentScope:Lcom/facebook/secure/intent/AnyIntentScope;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/facebook/secure/intent/AnyIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/AnyIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAnyIntentScope:Lcom/facebook/secure/intent/AnyIntentScope;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAnyIntentScope:Lcom/facebook/secure/intent/AnyIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getExternalIntentScope()Lcom/facebook/secure/intent/ExternalIntentScope;
    .locals 3

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentScope:Lcom/facebook/secure/intent/ExternalIntentScope;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Lcom/facebook/secure/intent/ExternalIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/ExternalIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentScope:Lcom/facebook/secure/intent/ExternalIntentScope;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentScope:Lcom/facebook/secure/intent/ExternalIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getFamilyIntentScope()Lcom/facebook/secure/intent/FamilyIntentScope;
    .locals 4

    .prologue
    .line 565
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentScope:Lcom/facebook/secure/intent/FamilyIntentScope;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Lcom/facebook/secure/intent/FamilyIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/secure/intent/FamilyIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;Z)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentScope:Lcom/facebook/secure/intent/FamilyIntentScope;

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentScope:Lcom/facebook/secure/intent/FamilyIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getInternalIntentScope()Lcom/facebook/secure/intent/InternalIntentScope;
    .locals 3

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentScope:Lcom/facebook/secure/intent/InternalIntentScope;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/facebook/secure/intent/InternalIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/InternalIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentScope:Lcom/facebook/secure/intent/InternalIntentScope;

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentScope:Lcom/facebook/secure/intent/InternalIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getThirdPartyIntentScope()Lcom/facebook/secure/intent/ThirdPartyIntentScope;
    .locals 3

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentScope:Lcom/facebook/secure/intent/ThirdPartyIntentScope;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/facebook/secure/intent/ThirdPartyIntentScope;

    sget-object v1, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    sget-object v2, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-direct {v0, v1, v2}, Lcom/facebook/secure/intent/ThirdPartyIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentScope:Lcom/facebook/secure/intent/ThirdPartyIntentScope;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentScope:Lcom/facebook/secure/intent/ThirdPartyIntentScope;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setEnforceMode(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingEnforcement:Lcom/facebook/secure/intent/LaunchEnforcement;

    invoke-virtual {v0, p0}, Lcom/facebook/secure/intent/LaunchEnforcement;->setEnforceMode(Lcom/facebook/secure/intent/LaunchEnforcement$EnforceMode;)V

    .line 152
    return-void
.end method

.method public static setReporter(Lcom/facebook/secure/logger/Reporter;)V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/facebook/secure/context/SecureContextHelper;->sDelegatingReporter:Lcom/facebook/secure/context/DelegatingReporter;

    invoke-virtual {v0, p0}, Lcom/facebook/secure/context/DelegatingReporter;->setReporter(Lcom/facebook/secure/logger/Reporter;)V

    .line 160
    return-void
.end method


# virtual methods
.method public declared-synchronized accessibleByAnyApp()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 325
    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getAccessibleByAnyAppIntentScope()Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;-><init>(Lcom/facebook/secure/intent/BaseIntentScope;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mAccessibleByAnyAppIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized external()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/facebook/secure/context/ScopedIntentLauncher;

    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getExternalIntentScope()Lcom/facebook/secure/intent/ExternalIntentScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;-><init>(Lcom/facebook/secure/intent/BaseIntentScope;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mExternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized family()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/facebook/secure/context/ScopedIntentLauncher;

    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getFamilyIntentScope()Lcom/facebook/secure/intent/FamilyIntentScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;-><init>(Lcom/facebook/secure/intent/BaseIntentScope;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mFamilyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized internal()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/facebook/secure/context/ScopedIntentLauncher;

    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getInternalIntentScope()Lcom/facebook/secure/intent/InternalIntentScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;-><init>(Lcom/facebook/secure/intent/BaseIntentScope;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mInternalIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerPublicReceiver(Landroid/content/Context;Lcom/facebook/secure/receiver/SecureBroadcastReceiver;Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getAnyIntentScope()Lcom/facebook/secure/intent/AnyIntentScope;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/secure/receiver/SecureBroadcastReceiver;->setIntentScope(Lcom/facebook/secure/intent/IntentScope;)V

    .line 407
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized thirdParty()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 2

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/facebook/secure/context/ScopedIntentLauncher;

    invoke-direct {p0}, Lcom/facebook/secure/context/SecureContextHelper;->getThirdPartyIntentScope()Lcom/facebook/secure/intent/ThirdPartyIntentScope;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/context/ScopedIntentLauncher;-><init>(Lcom/facebook/secure/intent/BaseIntentScope;)V

    iput-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/context/SecureContextHelper;->mThirdPartyIntentLauncher:Lcom/facebook/secure/context/ScopedIntentLauncher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
