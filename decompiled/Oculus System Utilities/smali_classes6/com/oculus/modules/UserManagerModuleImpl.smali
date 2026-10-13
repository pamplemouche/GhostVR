.class public Lcom/oculus/modules/UserManagerModuleImpl;
.super Lcom/oculus/modules/codegen/UserManagerModule;
.source "UserManagerModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/modules/UserManagerModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/modules/codegen/UserManagerModule;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method protected addUserImpl()V
    .locals 5

    .prologue
    .line 62
    sget-object v2, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Device owner initated adding new user. Calling createUserAndSwitch()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_0
    new-instance v0, Lcom/oculus/userserver/api/OculusUserManager;

    iget-object v2, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oculus/userserver/api/OculusUserManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "oum":Lcom/oculus/userserver/api/OculusUserManager;
    const/4 v3, 0x0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->createUserAndSwitch()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException when calling createUserAndSwitch(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 63
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method convertUser(Lcom/oculus/userserver/api/user/OculusUser;)Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
    .locals 4
    .param p1, "user"    # Lcom/oculus/userserver/api/user/OculusUser;

    .prologue
    .line 54
    new-instance v0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;-><init>()V

    .line 55
    .local v0, "ret":Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/OculusUser;->getUserId()I

    move-result v1

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->id:D

    .line 56
    invoke-virtual {p1}, Lcom/oculus/userserver/api/user/OculusUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->name:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method protected getUsersImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;>;"
    const/4 v4, 0x0

    .line 39
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :try_start_0
    new-instance v1, Lcom/oculus/userserver/api/OculusUserManager;

    iget-object v6, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/oculus/userserver/api/OculusUserManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "oum":Lcom/oculus/userserver/api/OculusUserManager;
    const/4 v7, 0x0

    .line 40
    :try_start_1
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/userserver/api/user/OculusUser;

    .line 43
    .local v3, "user":Lcom/oculus/userserver/api/user/OculusUser;
    invoke-virtual {p0, v3}, Lcom/oculus/modules/UserManagerModuleImpl;->convertUser(Lcom/oculus/userserver/api/user/OculusUser;)Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 39
    .end local v3    # "user":Lcom/oculus/userserver/api/user/OculusUser;
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v0    # "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :goto_1
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    if-eqz v1, :cond_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_3
    :try_start_5
    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v1    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_1
    move-exception v2

    .line 46
    .local v2, "re":Landroid/os/RemoteException;
    :goto_4
    sget-object v6, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException when calling getUsers(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-interface {p1, v2}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    .line 51
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_5
    return-void

    .line 45
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v0    # "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    .restart local v1    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 50
    :cond_2
    :goto_6
    invoke-interface {p1, v5}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    move-object v4, v5

    .line 51
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    goto :goto_5

    .line 45
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :catch_2
    move-exception v6

    :try_start_7
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    goto :goto_4

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    .end local v0    # "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :catch_4
    move-exception v8

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v0    # "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;>;"
    goto :goto_2

    .line 39
    .end local v0    # "oculusUsers":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/userserver/api/user/OculusUser;>;"
    :catch_5
    move-exception v6

    goto :goto_1
.end method

.method protected isSystemUserImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 33
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method protected marshallJSConstantIsMultiUserEnabled()Z
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lcom/oculus/userserver/api/OculusUserManager;->isMultiUserEnabled()Z

    move-result v0

    .line 26
    .local v0, "ret":Z
    sget-object v1, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMultiUserEnabled returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return v0
.end method

.method protected removeSelfImpl()V
    .locals 5

    .prologue
    .line 83
    sget-object v2, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Secondary user requested removal of their account"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_0
    new-instance v0, Lcom/oculus/userserver/api/OculusUserManager;

    iget-object v2, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/oculus/userserver/api/OculusUserManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "oum":Lcom/oculus/userserver/api/OculusUserManager;
    const/4 v3, 0x0

    .line 85
    :try_start_1
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->removeSelf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException when calling removeSelf(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 84
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method protected removeUserImpl(D)V
    .locals 7
    .param p1, "_userId"    # D

    .prologue
    .line 72
    double-to-int v2, p1

    .line 73
    .local v2, "userId":I
    sget-object v3, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device owner requested removal of user with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    new-instance v0, Lcom/oculus/userserver/api/OculusUserManager;

    iget-object v3, p0, Lcom/oculus/modules/UserManagerModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/oculus/userserver/api/OculusUserManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "oum":Lcom/oculus/userserver/api/OculusUserManager;
    const/4 v4, 0x0

    .line 75
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/oculus/userserver/api/OculusUserManager;->removeUser(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/oculus/modules/UserManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException when calling removeUser(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "oum":Lcom/oculus/userserver/api/OculusUserManager;
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 74
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_1
    :try_start_7
    throw v3

    :catch_3
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/oculus/userserver/api/OculusUserManager;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method
