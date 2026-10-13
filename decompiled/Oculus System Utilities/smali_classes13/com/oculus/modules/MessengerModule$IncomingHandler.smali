.class Lcom/oculus/modules/MessengerModule$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/MessengerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;


# direct methods
.method public constructor <init>(Lcom/oculus/modules/MessengerModule;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 90
    return-void
.end method

.method private convertAttachment(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "attachment"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "attachmentId"

    invoke-direct {p0, p1, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 107
    const-string v0, "attachmentType"

    invoke-direct {p0, p1, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private convertGetMessages(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "messageList"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v6, "threadId"

    invoke-direct {p0, p1, v6}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 156
    const-string v6, "threadId"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "threadId":Ljava/lang/String;
    const-string v6, "messages"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 158
    .local v2, "messages":Lorg/json/JSONArray;
    const-string v6, "reachedEndOfThread"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 160
    .local v3, "reachedEndOfThread":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 161
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 162
    .local v1, "message":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertMessage(Lorg/json/JSONObject;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "message":Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 165
    .local v4, "result":Lorg/json/JSONObject;
    const-string v6, "type"

    const-string v7, "MESSAGE_LIST"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v6, "reachedEndOfThread"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v6, "threadId"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v6, "messages"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    return-object v4
.end method

.method private convertGetThreads(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "threadList"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v5, "threads"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 141
    .local v4, "threads":Lorg/json/JSONArray;
    const-string v5, "reachedEndOfThreads"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 143
    .local v1, "reachedEndOfThreads":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 144
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 145
    .local v3, "thread":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThread(Lorg/json/JSONObject;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "thread":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v2, "result":Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v6, "THREAD_LIST"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v5, "reachedEndOfThreads"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v5, "threads"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-object v2
.end method

.method private convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "valueAsString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_0
    return-void
.end method

.method private convertMessage(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "message"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    const-string v3, "senderId"

    invoke-direct {p0, p1, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 112
    const-string v3, "offlineThreadingId"

    invoke-direct {p0, p1, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 113
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    const-string v3, "type"

    const-string v4, "NORMAL"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_0
    const-string v3, "attachments"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    const-string v3, "attachments"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 118
    .local v1, "attachments":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 119
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 120
    .local v0, "attachment":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertAttachment(Lorg/json/JSONObject;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "attachment":Lorg/json/JSONObject;
    .end local v1    # "attachments":Lorg/json/JSONArray;
    .end local v2    # "k":I
    :cond_1
    return-void
.end method

.method private convertNewMessage(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "newMessage"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v3, "threadId"

    invoke-direct {p0, p1, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 174
    const-string v3, "threadId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "threadId":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    .local v0, "message":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertMessage(Lorg/json/JSONObject;)V

    .line 177
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v1, "result":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "NEW_MESSAGE"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v3, "threadId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v3, "message"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    return-object v1
.end method

.method private convertParticipant(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "participant"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "participantId"

    invoke-direct {p0, p1, v0}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private convertThread(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "thread"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v5, "threadId"

    invoke-direct {p0, p1, v5}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 127
    const-string v5, "participants"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 128
    .local v4, "participants":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 129
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 130
    .local v3, "participant":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertParticipant(Lorg/json/JSONObject;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v3    # "participant":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "messages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 133
    .local v2, "messages":Lorg/json/JSONArray;
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 134
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    .local v1, "message":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertMessage(Lorg/json/JSONObject;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v1    # "message":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method

.method private convertThreadDeletion(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v2, "threadId"

    invoke-direct {p0, p1, v2}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertLongToString(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 186
    const-string v2, "threadId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "threadId":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v0, "result":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "THREAD_DELETION"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    return-object v0
.end method

.method private convertThreadUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "payload"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v0, "result":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "THREAD_UPDATE"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "thread"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    .local v1, "thread":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThread(Lorg/json/JSONObject;)V

    .line 198
    const-string v2, "thread"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "reloadThread"

    const-string v3, "reloadThread"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 200
    return-object v0
.end method

.method private convertUnreadThreadCountsUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "counts"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .local v0, "result":Lorg/json/JSONObject;
    const-string v1, "type"

    const-string v2, "UNREAD_THREAD_COUNTS_UPDATE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v1, "counts"

    const-string v2, "counts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, "data":Landroid/os/Bundle;
    const-string v8, "result"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "result":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_0
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    .local v3, "jsonResult":Lorg/json/JSONObject;
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xf

    if-eq v8, v9, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x14

    if-ne v8, v9, :cond_1

    .line 232
    :cond_0
    :try_start_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 250
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: Unrecognised message type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 319
    .end local v3    # "jsonResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: Failed to parse \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: Wrong JSON type received from \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "jsonResult":Lorg/json/JSONObject;
    :sswitch_0
    :try_start_2
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New Message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertNewMessage(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 258
    .local v4, "messengerEvent":Lorg/json/JSONObject;
    :goto_1
    iget-object v8, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    iget-wide v8, v8, Lcom/oculus/modules/MessengerModule;->RVRCtxTag:J

    const-string v10, "onMessengerEvent"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/oculus/modules/MessengerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v4    # "messengerEvent":Lorg/json/JSONObject;
    :sswitch_1
    :try_start_3
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread Deleted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThreadDeletion(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 240
    .restart local v4    # "messengerEvent":Lorg/json/JSONObject;
    goto :goto_1

    .line 242
    .end local v4    # "messengerEvent":Lorg/json/JSONObject;
    :sswitch_2
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread Update: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThreadUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 244
    .restart local v4    # "messengerEvent":Lorg/json/JSONObject;
    goto :goto_1

    .line 246
    .end local v4    # "messengerEvent":Lorg/json/JSONObject;
    :sswitch_3
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unread Thread Counts Update: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertUnreadThreadCountsUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    .line 248
    .restart local v4    # "messengerEvent":Lorg/json/JSONObject;
    goto :goto_1

    .line 254
    .end local v4    # "messengerEvent":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 255
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: Failed to encode messengerEvent from \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    iget-object v8, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v8, v3}, Lcom/oculus/modules/MessengerModule;->access$100(Lcom/oculus/modules/MessengerModule;Lorg/json/JSONObject;)Lcom/oculus/modules/MessengerModule$PendingAsyncCall;

    move-result-object v0

    .line 262
    .local v0, "call":Lcom/oculus/modules/MessengerModule$PendingAsyncCall;
    if-nez v0, :cond_2

    .line 263
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: Failed to get matching call for id \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    :cond_2
    :try_start_4
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_1

    .line 307
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got acknowledgment from Messenger Service for msg type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v5, "messengerResponse":Lorg/json/JSONObject;
    :goto_2
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 312
    .local v6, "params":Lorg/json/JSONArray;
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 313
    iget-object v8, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v9, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->resolveId:I

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oculus/modules/MessengerModule;->access$300(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 314
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    .end local v6    # "params":Lorg/json/JSONArray;
    :catch_3
    move-exception v2

    .line 315
    .restart local v2    # "e":Lorg/json/JSONException;
    iget-object v8, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v9, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->rejectId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse response from Messenger Service: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\". "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oculus/modules/MessengerModule;->access$200(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v2    # "e":Lorg/json/JSONException;
    :sswitch_4
    :try_start_5
    iget-object v8, p0, Lcom/oculus/modules/MessengerModule$IncomingHandler;->this$0:Lcom/oculus/modules/MessengerModule;

    iget v9, v0, Lcom/oculus/modules/MessengerModule$PendingAsyncCall;->rejectId:I

    const-string v10, "message"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/oculus/modules/MessengerModule;->access$200(Lcom/oculus/modules/MessengerModule;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :sswitch_5
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Create Group Thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v8, "thread"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 275
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    invoke-direct {p0, v5}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThread(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 278
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_6
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v8, "thread"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 280
    const/4 v5, 0x0

    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 282
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "thread"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 283
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    invoke-direct {p0, v5}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertThread(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 287
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_7
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Threads: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertGetThreads(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 289
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 291
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_8
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Non-Inbox Threads: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertGetThreads(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 293
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 295
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_9
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Messages: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertGetMessages(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 297
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 299
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_a
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Non-Inbox Messages: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, v3}, Lcom/oculus/modules/MessengerModule$IncomingHandler;->convertGetMessages(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 301
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 303
    .end local v5    # "messengerResponse":Lorg/json/JSONObject;
    :sswitch_b
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get Unread Thread Counts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    move-object v5, v3

    .line 305
    .restart local v5    # "messengerResponse":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0xf -> :sswitch_1
        0x14 -> :sswitch_3
    .end sparse-switch

    .line 268
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x2 -> :sswitch_7
        0x3 -> :sswitch_9
        0x7 -> :sswitch_5
        0xc -> :sswitch_6
        0x11 -> :sswitch_8
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
    .end sparse-switch
.end method
