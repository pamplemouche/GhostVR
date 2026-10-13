.class public Lcom/facebook/gk/store/GatekeeperRepository;
.super Ljava/lang/Object;
.source "GatekeeperRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFileLockHelper:Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;

.field private final mNamesFileHelper:Lcom/facebook/gk/store/AtomicFileHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/gk/store/AtomicFileHelper",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateFileHelper:Lcom/facebook/gk/store/AtomicFileHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/gk/store/AtomicFileHelper",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

.field private final mWorkingDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/gk/store/GatekeeperRepository;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/gk/store/GatekeeperRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/gk/store/AtomicFileHelper;Lcom/facebook/gk/store/AtomicFileHelper;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/gk/store/GatekeeperStoreConfig;",
            "Lcom/facebook/gk/store/AtomicFileHelper",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/gk/store/AtomicFileHelper",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperRepository;->mStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    .line 98
    iput-object p2, p0, Lcom/facebook/gk/store/GatekeeperRepository;->mStateFileHelper:Lcom/facebook/gk/store/AtomicFileHelper;

    .line 99
    iput-object p3, p0, Lcom/facebook/gk/store/GatekeeperRepository;->mNamesFileHelper:Lcom/facebook/gk/store/AtomicFileHelper;

    .line 100
    iput-object p4, p0, Lcom/facebook/gk/store/GatekeeperRepository;->mWorkingDirectory:Ljava/io/File;

    .line 101
    new-instance v0, Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;

    new-instance v1, Ljava/io/File;

    const-string v2, "file_lock"

    invoke-direct {v1, p4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/gk/store/GatekeeperRepository;->mFileLockHelper:Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/gk/store/AtomicFileHelper;

    new-instance v1, Lcom/facebook/gk/store/StateFileSerializer;

    invoke-direct {v1}, Lcom/facebook/gk/store/StateFileSerializer;-><init>()V

    const-string v2, "gk_state"

    invoke-direct {v0, v1, p2, v2}, Lcom/facebook/gk/store/AtomicFileHelper;-><init>(Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/gk/store/AtomicFileHelper;

    new-instance v2, Lcom/facebook/gk/store/NamesFileSerializer;

    invoke-direct {v2}, Lcom/facebook/gk/store/NamesFileSerializer;-><init>()V

    const-string v3, "gk_names"

    invoke-direct {v1, v2, p2, v3}, Lcom/facebook/gk/store/AtomicFileHelper;-><init>(Lcom/facebook/gk/store/AtomicFileHelper$FileSerializer;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/gk/store/GatekeeperRepository;-><init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Lcom/facebook/gk/store/AtomicFileHelper;Lcom/facebook/gk/store/AtomicFileHelper;Ljava/io/File;)V

    .line 85
    return-void
.end method
