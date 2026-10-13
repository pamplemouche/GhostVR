.class Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;
.super Ljava/lang/Object;
.source "GatekeeperRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gk/store/GatekeeperRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLockHelper"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperRepository$FileLockHelper;->mFile:Ljava/io/File;

    .line 321
    return-void
.end method
