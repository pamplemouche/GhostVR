.class Lcom/oculus/vrshell/home/module/SocialModule$1;
.super Ljava/lang/Object;
.source "SocialModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/SocialModule;->fetchFBConnectAccount(I)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/SocialModule;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/SocialModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/SocialModule;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/SocialModule$1;->this$0:Lcom/oculus/vrshell/home/module/SocialModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/SocialModule$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 21

    .prologue
    .line 137
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "userid"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "user_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "accesstoken"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "profile_picture"

    aput-object v3, v4, v2

    .line 143
    .local v4, "projection":[Ljava/lang/String;
    const-string v13, "null"

    .line 144
    .local v13, "facebookAccountString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 146
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$000()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 147
    if-eqz v10, :cond_2

    .line 148
    const-string v2, "userid"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 149
    .local v18, "userIdColumnIndex":I
    const-string v2, "user_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 150
    .local v20, "userNameColumnIndex":I
    const-string v2, "accesstoken"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 151
    .local v9, "accessTokenColumnIndex":I
    const-string v2, "profile_picture"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 153
    .local v16, "profilePictureColumnIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 155
    .local v17, "userId":Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 156
    .local v19, "userName":Ljava/lang/String;
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, "accessToken":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, "profilePicture":Ljava/lang/String;
    new-instance v12, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v12, v0, v1, v8, v15}, Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v12, "facebookAccount":Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$200()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 173
    .end local v8    # "accessToken":Ljava/lang/String;
    .end local v9    # "accessTokenColumnIndex":I
    .end local v12    # "facebookAccount":Lcom/oculus/vrshell/home/module/SocialModule$FacebookAccount;
    .end local v15    # "profilePicture":Ljava/lang/String;
    .end local v16    # "profilePictureColumnIndex":I
    .end local v17    # "userId":Ljava/lang/String;
    .end local v18    # "userIdColumnIndex":I
    .end local v19    # "userName":Ljava/lang/String;
    .end local v20    # "userNameColumnIndex":I
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v14, v13

    .line 177
    .end local v13    # "facebookAccountString":Ljava/lang/String;
    .local v14, "facebookAccountString":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 168
    .end local v14    # "facebookAccountString":Ljava/lang/String;
    .restart local v13    # "facebookAccountString":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cursor was null"

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v11

    .line 171
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/oculus/vrshell/home/module/SocialModule;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to query ContentProvider"

    invoke-static {v2, v3, v11}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v10, :cond_3

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v14, v13

    .line 177
    .end local v13    # "facebookAccountString":Ljava/lang/String;
    .restart local v14    # "facebookAccountString":Ljava/lang/String;
    goto :goto_1

    .line 173
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "facebookAccountString":Ljava/lang/String;
    .restart local v13    # "facebookAccountString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 174
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v14, v13

    .line 177
    .end local v13    # "facebookAccountString":Ljava/lang/String;
    .restart local v14    # "facebookAccountString":Ljava/lang/String;
    goto :goto_1
.end method
