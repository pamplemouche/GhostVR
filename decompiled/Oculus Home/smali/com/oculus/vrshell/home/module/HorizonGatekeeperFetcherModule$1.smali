.class Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;
.super Ljava/lang/Object;
.source "HorizonGatekeeperFetcherModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->checkGatekeeper(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

.field final synthetic val$gkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    iput-object p2, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->val$gkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 47
    sget-object v8, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->CONTENT_URI:Ljava/lang/String;

    .line 48
    .local v8, "uriString":Ljava/lang/String;
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->val$gkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->val$gkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 51
    :cond_0
    const/4 v6, 0x0

    .line 53
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->this$0:Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;

    invoke-static {v0}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;->access$000(Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    if-eqz v6, :cond_2

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v0

    .line 64
    :cond_3
    :try_start_1
    const-string v0, "gk_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 65
    .local v7, "index":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_4

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 68
    if-eqz v6, :cond_2

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v10

    .line 65
    goto :goto_1

    .line 68
    .end local v7    # "index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/HorizonGatekeeperFetcherModule$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
