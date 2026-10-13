.class public Lcom/oculus/vrshell/config/SystemRoutesConfiguration;
.super Ljava/lang/Object;
.source "SystemRoutesConfiguration.java"


# instance fields
.field private mIsValid:Z

.field private mRoutes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mRoutes:[Ljava/lang/String;

    .line 27
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mIsValid:Z

    return-void
.end method


# virtual methods
.method public getRoutes()[Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mRoutes:[Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mIsValid:Z

    return v0
.end method

.method public updateRoutes(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mRoutes:[Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mRoutes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mRoutes:[Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/SystemRoutesConfiguration;->mIsValid:Z

    return-void
.end method
